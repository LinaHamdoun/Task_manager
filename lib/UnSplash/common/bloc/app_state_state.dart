enum BlocStatus { init, loading, success, failed }

class BlocStateData<T> {
  final T? data;

  final BlocStatus _state;

  const BlocStateData.init() : data = null, _state = BlocStatus.init;

  const BlocStateData.loading() : data = null, _state = BlocStatus.loading;

  const BlocStateData.success(this.data) : _state = BlocStatus.success;

  const BlocStateData.failed() : data = null, _state = BlocStatus.failed;

  bool get isLoading => _state == BlocStatus.loading;

  bool get isSuccess => _state == BlocStatus.success;

  bool get isFailed => _state == BlocStatus.failed;

  bool get isInit => _state == BlocStatus.init;
}
