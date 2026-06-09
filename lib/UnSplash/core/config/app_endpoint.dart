


class AppEndPoint{
  const AppEndPoint._();


  static const getImages = GetImages() ;
  static const searchPhotos = SearchPhotos() ;
  static const details =Details() ;

}

class GetImages {
  const GetImages () ;

  final String getImages = "/photos" ;
}

class SearchPhotos {
  const SearchPhotos () ;
 final String searchPhotos = "/search/photos";

}

class Details {
  const Details () ;

  String detailsPhotos (String  id) => '/photos/$id';

}



