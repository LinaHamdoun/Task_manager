import 'package:state_magement/UnSplash/show_new_image/data/models/photo_model_isar.dart';
import '../../domain/entities/entities_photo.dart';

List<PhotoModel> photoModelFromJson(dynamic str) {
  return (str as List)
      .map((e) => PhotoModel.fromJson(e as Map<String, dynamic>))
      .toList();
}

class PhotoModel {
  final String? idPhoto;
  final String? alt_description;
  final UrlsModel? urls;
  final UserModel? user;
  final int? likes;

  const PhotoModel({
    this.idPhoto,
    this.alt_description,
    this.urls,
    this.user,
    this.likes,
  });

  PhotoEntities toEntity() => PhotoEntities(
    idPhoto: idPhoto,
    alt_description: alt_description,
    urls: urls?.toEntity(),
    user: user?.toEntity(),
    likes: likes,
  );

  PhotoIsarModel toIsarModel(int page) => PhotoIsarModel(
    idPhoto: idPhoto,
    altDescription: alt_description ?? 'No Description',
    likes: likes ?? 0,
    page: page,
    cachedAt: DateTime.now(),
    urls: urls == null
        ? null
        : (UrlsIsarEmbed()
      ..raw = urls!.raw
      ..full = urls!.full
      ..regular = urls!.regular
      ..small = urls!.small
      ..thumb = urls!.thumb),
    user: user == null
        ? null
        : (UserIsarEmbed()
      ..userId = user!.id
      ..username = user!.username
      ..name = user!.name
      ..profileImage = (user!.profile_image == null
          ? null
          : (ProfileImageIsarEmbed()
        ..small = user!.profile_image!.small
        ..medium = user!.profile_image!.medium
        ..large = user!.profile_image!.large))),
  );

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
    idPhoto: json['id'],
    alt_description: json['alt_description'] ?? '',
    urls: json['urls'] == null ? null : UrlsModel.fromJson(json['urls']),
    user: json['user'] == null ? null : UserModel.fromJson(json['user']),
    likes: json['likes'],
  );
}

class UrlsModel {
  final String? raw, full, regular, small, thumb;

  const UrlsModel({this.raw, this.full, this.regular, this.small, this.thumb});

  UrlsEntities toEntity() => UrlsEntities(
    raw: raw,
    full: full,
    regular: regular,
    small: small,
    thumb: thumb,
  );

  factory UrlsModel.fromJson(Map<String, dynamic> json) => UrlsModel(
    raw: json['raw'],
    full: json['full'],
    regular: json['regular'],
    small: json['small'],
    thumb: json['thumb'],
  );
}

class UserModel {
  final String? id, username, name;
  final ProfileImageModel? profile_image;

  const UserModel({this.id, this.username, this.name, this.profile_image});

  UserEntities toEntity() => UserEntities(
    id: id,
    username: username,
    name: name,
    profile_image: profile_image?.toEntity(),
  );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'],
    username: json['username'],
    name: json['name'],
    profile_image: json['profile_image'] == null
        ? null
        : ProfileImageModel.fromJson(json['profile_image']),
  );
}

class ProfileImageModel {
  final String? small, medium, large;

  const ProfileImageModel({this.small, this.medium, this.large});

  ProfileImageEntities toEntity() => ProfileImageEntities(
    small: small,
    medium: medium,
    large: large,
  );

  factory ProfileImageModel.fromJson(Map<String, dynamic> json) =>
      ProfileImageModel(
        small: json['small'],
        medium: json['medium'],
        large: json['large'],
      );
}

