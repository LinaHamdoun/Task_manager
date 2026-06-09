part of 'photos_bloc.dart';

@immutable
sealed class PhotosEvent {}

class GetPhotosEvent extends PhotosEvent {}

class LoadMorePhotosEvent extends PhotosEvent {}
class NetworkChangedEvent extends PhotosEvent {
  bool isOnline ;
  NetworkChangedEvent(this.isOnline);
}
