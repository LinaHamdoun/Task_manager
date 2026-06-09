import 'package:isar/isar.dart';
import 'package:state_magement/UnSplash/show_new_image/domain/entities/entities_photo.dart';
import 'photo_model.dart';

part 'photo_model_isar.g.dart';

@collection
class PhotoIsarModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? idPhoto;

  String? altDescription;
  int? likes;

  UrlsIsarEmbed? urls;
  UserIsarEmbed? user;

  @Index()
  int? page;

  @Index()
  DateTime? cachedAt;

  PhotoIsarModel({
    this.idPhoto,
    this.altDescription,
    this.likes,
    this.urls,
    this.user,
    this.page,
    this.cachedAt,
  });

  factory PhotoIsarModel.fromModel(PhotoModel model, int page) {
    return PhotoIsarModel(
      idPhoto: model.idPhoto,
      altDescription: model.alt_description,
      likes: model.likes,
      page: page,
      cachedAt: DateTime.now(),
      urls: UrlsIsarEmbed()
        ..regular = model.urls?.regular
        ..small = model.urls?.small
        ..full = model.urls?.full
        ..raw = model.urls?.raw
        ..thumb = model.urls?.thumb,
      user: model.user == null ? null : (UserIsarEmbed()
        ..userId = model.user!.id
        ..username = model.user!.username
        ..name = model.user!.name
        ..profileImage = (ProfileImageIsarEmbed()
          ..small = model.user!.profile_image?.small
          ..medium = model.user!.profile_image?.medium
          ..large = model.user!.profile_image?.large)),
    );
  }

  PhotoEntities toEntity() {
    return PhotoEntities(
      idPhoto: idPhoto ?? '',
      alt_description: altDescription ?? '',
      likes: likes ?? 0,
      urls: UrlsEntities(
        raw: urls?.raw ?? '',
        full: urls?.full ?? '',
        regular: urls?.regular ?? '',
        small: urls?.small ?? '',
        thumb: urls?.thumb ?? '',
      ),
      user: UserEntities(
        id: user?.userId ?? '',
        username: user?.username ?? '',
        name: user?.name ?? '',
        profile_image: ProfileImageEntities(
          small: user?.profileImage?.small ?? '',
          medium: user?.profileImage?.medium ?? '',
          large: user?.profileImage?.large ?? '',
        ),
      ),
    );
  }
}


@embedded
class UrlsIsarEmbed {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
}

@embedded
class UserIsarEmbed {
  String? userId;
  String? username;
  String? name;
  ProfileImageIsarEmbed? profileImage;
}

@embedded
class ProfileImageIsarEmbed {
  String? small;
  String? medium;
  String? large;
}

