import 'package:equatable/equatable.dart';

class PhotoEntities extends Equatable {
  final String? idPhoto;

  final String? alt_description;
  final UrlsEntities? urls;

  final UserEntities? user;

  final int? likes;

  const PhotoEntities({
    required this.idPhoto,
    required this.alt_description,
    required this.urls,
    required this.user,
    required this.likes,
  });

  @override
  List<Object?> get props => [idPhoto, alt_description, urls, user, likes];
}

class UrlsEntities extends Equatable {
  final String? raw;

  final String? full;

  final String? regular;
  final String? small;

  final String? thumb;

  const UrlsEntities({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  @override
  List<Object?> get props => [raw, full, regular, small, thumb];
}

class UserEntities extends Equatable {
  final String? id;

  final String? username;
  final String? name;

  final ProfileImageEntities? profile_image;

  const UserEntities({
    required this.id,
    required this.username,
    required this.name,
    required this.profile_image,
  });

  @override
  List<Object?> get props => [id, username, name, profile_image];
}

class ProfileImageEntities extends Equatable {
  final String? small;
  final String? medium;
  final String? large;

  const ProfileImageEntities({
    required this.small,
    required this.medium,
    required this.large,
  });

  @override
  List<Object?> get props => [small, medium, large];
}
