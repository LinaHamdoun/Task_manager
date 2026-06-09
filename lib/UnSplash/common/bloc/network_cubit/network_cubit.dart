import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:state_magement/UnSplash/common/network/network_monitor.dart';

part 'network_state.dart';

@injectable
class NetworkBloc extends Cubit<bool> {

  NetworkMonitor monitor ;
  late final  StreamSubscription _sub ;
  NetworkBloc(this.monitor) : super(false) {
   _sub  = monitor.stream.listen((status) {
      emit(status);
    });
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }

}