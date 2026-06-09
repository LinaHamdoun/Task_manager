import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

import 'package:bloc/bloc.dart';

class BlocTransformers {
  static EventTransformer<T> droppableTransformer<T>() {
    return (events, mapper) {
      return droppable<T>().call(events, mapper);
    };
  }

  static EventTransformer<T> restartableTransformer<T>() {
    return (events, mapper) {
      return restartable<T>().call(events, mapper);
    };
  }

  static EventTransformer<T> sequentialTransformer<T>() {
    return (events, mapper) {
      return sequential<T>().call(events, mapper);
    };
  }

  static EventTransformer<T> concurrentTransformer<T>() {
    return (events, mapper) {
      return concurrent<T>().call(events, mapper);
    };
  }

  static EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) {
      return events.debounce(duration).asyncExpand(mapper);
    };
  }

  static EventTransformer<T> throttle<T>(Duration duration) {
    return (events, mapper) {
      return events.throttle(duration).asyncExpand(mapper);
    };
  }

  static EventTransformer<T> throttleDroppable<T>({
    Duration duration = const Duration(milliseconds: 500),
  }) {
    return (events, mapper) {
      return droppable<T>().call(events.throttle(duration), mapper);
    };
  }

  static EventTransformer<T> debounceRestartable<T>({
    Duration duration = const Duration(milliseconds: 500),
  }) {
    return (events, mapper) {
      return restartable<T>().call(events.debounce(duration), mapper);
    };
  }
}
