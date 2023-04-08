// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStatus extends InstanceStatus {
  @override
  final String? availabilityZone;
  @override
  final String? outpostArn;
  @override
  final _i5.BuiltList<_i2.InstanceStatusEvent>? events;
  @override
  final String? instanceId;
  @override
  final _i3.InstanceState? instanceState;
  @override
  final _i4.InstanceStatusSummary? instanceStatus;
  @override
  final _i4.InstanceStatusSummary? systemStatus;

  factory _$InstanceStatus([void Function(InstanceStatusBuilder)? updates]) =>
      (new InstanceStatusBuilder()..update(updates))._build();

  _$InstanceStatus._(
      {this.availabilityZone,
      this.outpostArn,
      this.events,
      this.instanceId,
      this.instanceState,
      this.instanceStatus,
      this.systemStatus})
      : super._();

  @override
  InstanceStatus rebuild(void Function(InstanceStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStatusBuilder toBuilder() =>
      new InstanceStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStatus &&
        availabilityZone == other.availabilityZone &&
        outpostArn == other.outpostArn &&
        events == other.events &&
        instanceId == other.instanceId &&
        instanceState == other.instanceState &&
        instanceStatus == other.instanceStatus &&
        systemStatus == other.systemStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceState.hashCode);
    _$hash = $jc(_$hash, instanceStatus.hashCode);
    _$hash = $jc(_$hash, systemStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStatusBuilder
    implements Builder<InstanceStatus, InstanceStatusBuilder> {
  _$InstanceStatus? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  _i5.ListBuilder<_i2.InstanceStatusEvent>? _events;
  _i5.ListBuilder<_i2.InstanceStatusEvent> get events =>
      _$this._events ??= new _i5.ListBuilder<_i2.InstanceStatusEvent>();
  set events(_i5.ListBuilder<_i2.InstanceStatusEvent>? events) =>
      _$this._events = events;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i3.InstanceStateBuilder? _instanceState;
  _i3.InstanceStateBuilder get instanceState =>
      _$this._instanceState ??= new _i3.InstanceStateBuilder();
  set instanceState(_i3.InstanceStateBuilder? instanceState) =>
      _$this._instanceState = instanceState;

  _i4.InstanceStatusSummaryBuilder? _instanceStatus;
  _i4.InstanceStatusSummaryBuilder get instanceStatus =>
      _$this._instanceStatus ??= new _i4.InstanceStatusSummaryBuilder();
  set instanceStatus(_i4.InstanceStatusSummaryBuilder? instanceStatus) =>
      _$this._instanceStatus = instanceStatus;

  _i4.InstanceStatusSummaryBuilder? _systemStatus;
  _i4.InstanceStatusSummaryBuilder get systemStatus =>
      _$this._systemStatus ??= new _i4.InstanceStatusSummaryBuilder();
  set systemStatus(_i4.InstanceStatusSummaryBuilder? systemStatus) =>
      _$this._systemStatus = systemStatus;

  InstanceStatusBuilder() {
    InstanceStatus._init(this);
  }

  InstanceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _outpostArn = $v.outpostArn;
      _events = $v.events?.toBuilder();
      _instanceId = $v.instanceId;
      _instanceState = $v.instanceState?.toBuilder();
      _instanceStatus = $v.instanceStatus?.toBuilder();
      _systemStatus = $v.systemStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStatus;
  }

  @override
  void update(void Function(InstanceStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStatus build() => _build();

  _$InstanceStatus _build() {
    _$InstanceStatus _$result;
    try {
      _$result = _$v ??
          new _$InstanceStatus._(
              availabilityZone: availabilityZone,
              outpostArn: outpostArn,
              events: _events?.build(),
              instanceId: instanceId,
              instanceState: _instanceState?.build(),
              instanceStatus: _instanceStatus?.build(),
              systemStatus: _systemStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();

        _$failedField = 'instanceState';
        _instanceState?.build();
        _$failedField = 'instanceStatus';
        _instanceStatus?.build();
        _$failedField = 'systemStatus';
        _systemStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
