

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:state_magement/UnSplash/core/config/isar_config.dart';

@module
abstract class ModuleIsar
{
  @preResolve
  Future <Isar> get isar => IsarConfig.init() ;
}