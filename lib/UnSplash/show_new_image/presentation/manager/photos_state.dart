part of 'photos_bloc.dart';

@immutable
 class PhotosState extends Equatable {

 final  BlocStatus  state  ;
 final   List<PhotoEntities> photos ;
 final String? errorMessage ;
 final bool isLoading;
 final bool isLoadingMore;
 final int page;
 final bool hasMore;



 const  PhotosState({
    this.state = BlocStatus.loading
    , this.photos= const [],
    this.errorMessage,
   this.page =1 ,
   this.isLoading = true  ,
   this.isLoadingMore= false ,
   this.hasMore = true ,

  });

  PhotosState copyWith ({
    BlocStatus ? state ,
    List<PhotoEntities> ?photos,
     String? errorMessage ,
     bool? isLoading,
     bool?  isLoadingMore,
     int ? page,
     bool ? hasMore,




  })=> PhotosState(
    state : state ?? this.state ,
    photos: photos?? this.photos,
    errorMessage: errorMessage ,
    isLoading:  isLoading ?? this.isLoading ,
    isLoadingMore: isLoadingMore?? this.isLoadingMore,
    page: page ?? this.page,
    hasMore:  hasMore ?? this.hasMore ,


  );

  @override
  List<Object?> get props =>[photos , state , errorMessage,
  isLoading, isLoadingMore , page , hasMore
  ];

}


