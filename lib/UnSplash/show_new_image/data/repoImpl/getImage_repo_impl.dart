import 'package:injectable/injectable.dart';

import '../../../common/const/typedef.dart';
import '../../../common/util/helpers/error_handeler.dart';
import '../../domain/entities/entities_photo.dart';
import '../../domain/repo/getImage_repo.dart';
import '../../domain/useCase/getImages_useCase.dart';
import '../dataSource/local_data_source.dart';
import '../dataSource/remote_dataSource.dart';
import '../models/photo_model_isar.dart';

@LazySingleton(as: GetImagesRepo)
class GetImagesRepoImpl with HandlingException implements GetImagesRepo {
  final GetImagesRemoteDataSource remote;
  final ImagesLocalDataSource local;

  GetImagesRepoImpl({required this.remote, required this.local});

  @override
  DataResponse<List<PhotoEntities>> getImages(Params params) async {
    return await wrapHandlingException(
      tryCall: () async {
        final int page = params is GetImagesParams ? params.page : 1;

        try {
          final remoteData = await remote.getImages(params);

          final isarModels = remoteData
              .map((e) => PhotoIsarModel.fromModel(e, page))

              .toList();

          await local.cacheImages(isarModels);
          await local.clearExpiredCache();

          return remoteData.map((e) => e.toEntity()).toList();
        } catch (e) {
          final cached = await local.getCacheImages(page);
          if (cached.isNotEmpty) {
            return cached.map((e) => e.toEntity()).toList();
          }
          rethrow;
        }
      },
    );
  }
}