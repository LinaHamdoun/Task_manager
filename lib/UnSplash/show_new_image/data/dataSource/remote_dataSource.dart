



 import 'package:injectable/injectable.dart';
import 'package:state_magement/UnSplash/common/const/typedef.dart';
import 'package:state_magement/UnSplash/common/util/helpers/api_handler.dart';
import 'package:state_magement/UnSplash/common/util/helpers/dio_helper.dart';
import 'package:state_magement/UnSplash/core/config/app_endpoint.dart';
import 'package:state_magement/UnSplash/show_new_image/data/models/photo_model.dart';

@lazySingleton
class GetImagesRemoteDataSource with HandlingApiManager
{
  final DioNetwork dioNetwork ;
  GetImagesRemoteDataSource ({required this.dioNetwork}) ;

Future<List<PhotoModel>> getImages (Params params)
   {
    return  wrapHandlingApi(
        tryCall:()=> dioNetwork.getData(endPoint: AppEndPoint.getImages.getImages,
        params: params.getParams()
        ),
        jsonConvert: photoModelFromJson
    );
  }



}