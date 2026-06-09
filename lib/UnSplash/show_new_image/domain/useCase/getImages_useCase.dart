



import 'package:injectable/injectable.dart';
import 'package:state_magement/UnSplash/show_new_image/data/models/photo_model.dart';

import '../../../common/const/typedef.dart';
import '../entities/entities_photo.dart';
import '../repo/getImage_repo.dart';

@lazySingleton
class GetImagesUseCase implements UseCase<List<PhotoEntities>, GetImagesParams> {
  final GetImagesRepo  getImagesRepo ;

  GetImagesUseCase({required this.getImagesRepo});

  @override
  DataResponse<List<PhotoEntities>> call(GetImagesParams params) {
    return getImagesRepo.getImages(params);
  }
}



class GetImagesParams  with Params{

  final int page ;
  final int perPage ;


  GetImagesParams( {  required this.page , this.perPage =20});

  @override
  QueryParams getParams() => {
    "page": '$page' ,
    "per_page" : "$perPage"
  };

}
