import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:state_magement/UnSplash/common/bloc/network_cubit/network_cubit.dart';

import '../../../common/bloc/app_state_state.dart';
import '../../../common/bloc/bloc_transformers.dart';
import '../../domain/entities/entities_photo.dart';
import '../../domain/useCase/getImages_useCase.dart';

part 'photos_event.dart';

part 'photos_state.dart';

@injectable
class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final GetImagesUseCase getImagesUseCase;
  NetworkBloc networkBloc;

  late final StreamSubscription _netSub;

  PhotosBloc(this.getImagesUseCase, this.networkBloc)
    : super(const PhotosState()) {
    on<GetPhotosEvent>(_getPhotos);
    on<LoadMorePhotosEvent>(
      _loadMorePhotos,
      transformer: BlocTransformers.throttleDroppable(),
    );
    _netSub = networkBloc.stream.listen((isOnline) {
      if (isOnline) {
        if (state.photos.isEmpty) {
          add(GetPhotosEvent());
        } else if (state.state == BlocStatus.failed) {
          add(LoadMorePhotosEvent());
        }
      }
    });

    add(GetPhotosEvent());
  }

  Future<void> _getPhotos(
    GetPhotosEvent event,
    Emitter<PhotosState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: null,
        state: BlocStatus.loading,
      ),
    );

    final result = await getImagesUseCase(GetImagesParams(page: 1));

    result.fold(
      (failure) {
        if (!networkBloc.state && state.photos.isEmpty) {
          return;
        }
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure.message,
            state: BlocStatus.failed,
          ),
        );
      },
      (photos) {
        emit(
          state.copyWith(
            isLoading: false,
            photos: photos,
            page: 1,
            hasMore: photos.isNotEmpty,
            state: BlocStatus.success,
          ),
        );
      },
    );
  }

  Future<void> _loadMorePhotos(
    LoadMorePhotosEvent event,
    Emitter<PhotosState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasMore) return;
    if (!networkBloc.state) return;

    emit(state.copyWith(isLoadingMore: true));

    final nextPage = state.page + 1;

    final result = await getImagesUseCase(GetImagesParams(page: nextPage));

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingMore: false,
            errorMessage: failure.message,
            state: BlocStatus.failed,
          ),
        );
      },
      (newPhotos) {
        final existingIds = state.photos.map((e) => e.idPhoto).toSet();

        final filtered = newPhotos
            .where((e) => !existingIds.contains(e.idPhoto))
            .toList();

        final updatedList = [...state.photos, ...filtered];
        emit(
          state.copyWith(
            isLoadingMore: false,
            photos: updatedList,
            page: nextPage,
            hasMore: newPhotos.isNotEmpty,
            state: BlocStatus.success,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _netSub.cancel();
    return super.close();
  }
}
