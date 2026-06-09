/*if (state.isLoadingMore)
  const Padding(
    padding: EdgeInsets.all(16),
    child: CircularProgressIndicator(),
  )*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_magement/UnSplash/common/bloc/app_state_state.dart';
import 'package:state_magement/UnSplash/show_new_image/presentation/component/photo_item.dart';
import 'package:state_magement/UnSplash/show_new_image/presentation/manager/photos_bloc.dart';

import '../component/error_widget.dart';
import '../component/shimmer_item.dart';

class ShowPhoto extends StatefulWidget {
  const ShowPhoto({super.key});

  @override
  State<ShowPhoto> createState() => _ShowPhotoState();
}

class _ShowPhotoState extends State<ShowPhoto> {
  late ScrollController _scrollController;

  bool _isNearBottom() {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final current = _scrollController.position.pixels;
    return current >= (maxScroll * 0.8);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    context.read<PhotosBloc>().add(GetPhotosEvent());


    _scrollController.addListener(() {
      if (_isNearBottom()) {
        context.read<PhotosBloc>().add(LoadMorePhotosEvent());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UnSplash Gallery')),

      body: BlocBuilder<PhotosBloc, PhotosState>(
        builder: (context, state) {
          if (  (state.isLoading && state.photos.isEmpty )) {
            return GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return PhotoShimmerItem();
              },
            );
          }

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            controller: _scrollController,
            cacheExtent: 500,
            itemCount: state.photos.length + (state.isLoadingMore ? 1 : 0),

            itemBuilder: (context, index) {
              if (index < state.photos.length) {
                return PhotoItem(photo: state.photos[index]);
              } else {
                return PhotoShimmerItem();
              }
            },
          );
        },

               ),
    );
  }
}

//format for ui
