

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:state_magement/UnSplash/show_new_image/data/models/photo_model_isar.dart';

abstract class ImagesLocalDataSource {
  Future<void> cacheImages(List<PhotoIsarModel> photos);
  Future<List<PhotoIsarModel>> getCacheImages(int page);
  Future<bool> hasCache();
  Future<void> clearExpiredCache();
}

@LazySingleton(as: ImagesLocalDataSource)
class ImagesLocalDataSourceImpl implements ImagesLocalDataSource {
  final Isar isar;

  ImagesLocalDataSourceImpl(this.isar);

  @override
  Future<void> cacheImages(List<PhotoIsarModel> photos) async {
    await isar.writeTxn(() async {
      for (final photo in photos) {
        photo.cachedAt = DateTime.now();
      }
      await isar.photoIsarModels.putAll(photos);

    });
  }

  @override
  Future<List<PhotoIsarModel>> getCacheImages(int page) async {
    return await isar.photoIsarModels
        .filter()
        .pageEqualTo(page)
        .findAll();
  }

  @override
  Future<bool> hasCache() async {
    final count = await isar.photoIsarModels.count();
    return count > 0;
  }

  @override
  Future<void> clearExpiredCache() async {
    final expiryTime =
    DateTime.now().subtract(const Duration(days: 1));

    await isar.writeTxn(() async {
      final oldItems = await isar.photoIsarModels
          .filter()
          .cachedAtLessThan(expiryTime)
          .findAll();

      for (final item in oldItems) {
        await isar.photoIsarModels.delete(item.id);
      }
    });
  }
}