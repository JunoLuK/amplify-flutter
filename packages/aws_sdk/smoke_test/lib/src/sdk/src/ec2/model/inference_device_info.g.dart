// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.inference_device_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InferenceDeviceInfo extends InferenceDeviceInfo {
  @override
  final int? count;
  @override
  final String? name;
  @override
  final String? manufacturer;

  factory _$InferenceDeviceInfo(
          [void Function(InferenceDeviceInfoBuilder)? updates]) =>
      (new InferenceDeviceInfoBuilder()..update(updates))._build();

  _$InferenceDeviceInfo._({this.count, this.name, this.manufacturer})
      : super._();

  @override
  InferenceDeviceInfo rebuild(
          void Function(InferenceDeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InferenceDeviceInfoBuilder toBuilder() =>
      new InferenceDeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InferenceDeviceInfo &&
        count == other.count &&
        name == other.name &&
        manufacturer == other.manufacturer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InferenceDeviceInfoBuilder
    implements Builder<InferenceDeviceInfo, InferenceDeviceInfoBuilder> {
  _$InferenceDeviceInfo? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  InferenceDeviceInfoBuilder() {
    InferenceDeviceInfo._init(this);
  }

  InferenceDeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _name = $v.name;
      _manufacturer = $v.manufacturer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InferenceDeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InferenceDeviceInfo;
  }

  @override
  void update(void Function(InferenceDeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InferenceDeviceInfo build() => _build();

  _$InferenceDeviceInfo _build() {
    final _$result = _$v ??
        new _$InferenceDeviceInfo._(
            count: count, name: name, manufacturer: manufacturer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
