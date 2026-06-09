import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkMonitor {
  final Connectivity connectivity;

  final _controller = StreamController<bool>.broadcast();
   Stream<bool> get stream => _controller.stream;
  bool get currentStatus => _isOnline;
  bool _isOnline = false;
  late final StreamSubscription _subscription;

  NetworkMonitor(this.connectivity) {
    _subscription =
        connectivity.onConnectivityChanged.listen(_checkInternet);
  }

  Future<void> _checkInternet(_) async {
    try {
      final result =
      await InternetAddress.lookup('google.com');

      final online = result.isNotEmpty;

      if (online != _isOnline) {
        _isOnline = online;
        _controller.add(online);
      }
    } catch (_) {
      if (_isOnline) {
        _isOnline = false;
        _controller.add(false);
      }
    }
  }

  void dispose() {
    _subscription.cancel();
    _controller.close();
  }
}