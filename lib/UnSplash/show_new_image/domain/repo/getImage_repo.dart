


import 'package:state_magement/UnSplash/show_new_image/data/models/photo_model.dart';

import '../../../common/const/typedef.dart';
import '../entities/entities_photo.dart';

abstract class GetImagesRepo {
  DataResponse<List<PhotoEntities>> getImages(Params params);
}