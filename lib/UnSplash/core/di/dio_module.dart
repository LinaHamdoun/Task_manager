


import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../common/util/helpers/dio_helper.dart';
import '../config/app_config.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  DioNetwork dioNetwork() => DioNetwork(baseUrl: AppUrl.baseUrl);
}
