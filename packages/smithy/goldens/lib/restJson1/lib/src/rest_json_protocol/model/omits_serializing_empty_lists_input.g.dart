// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.omits_serializing_empty_lists_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OmitsSerializingEmptyListsInput
    extends OmitsSerializingEmptyListsInput {
  @override
  final _i4.BuiltList<bool>? queryBooleanList;
  @override
  final _i4.BuiltList<double>? queryDoubleList;
  @override
  final _i4.BuiltList<_i3.FooEnum>? queryEnumList;
  @override
  final _i4.BuiltList<int>? queryIntegerEnumList;
  @override
  final _i4.BuiltList<int>? queryIntegerList;
  @override
  final _i4.BuiltList<String>? queryStringList;
  @override
  final _i4.BuiltList<DateTime>? queryTimestampList;

  factory _$OmitsSerializingEmptyListsInput(
          [void Function(OmitsSerializingEmptyListsInputBuilder)? updates]) =>
      (new OmitsSerializingEmptyListsInputBuilder()..update(updates))._build();

  _$OmitsSerializingEmptyListsInput._(
      {this.queryBooleanList,
      this.queryDoubleList,
      this.queryEnumList,
      this.queryIntegerEnumList,
      this.queryIntegerList,
      this.queryStringList,
      this.queryTimestampList})
      : super._();

  @override
  OmitsSerializingEmptyListsInput rebuild(
          void Function(OmitsSerializingEmptyListsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsSerializingEmptyListsInputBuilder toBuilder() =>
      new OmitsSerializingEmptyListsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsSerializingEmptyListsInput &&
        queryBooleanList == other.queryBooleanList &&
        queryDoubleList == other.queryDoubleList &&
        queryEnumList == other.queryEnumList &&
        queryIntegerEnumList == other.queryIntegerEnumList &&
        queryIntegerList == other.queryIntegerList &&
        queryStringList == other.queryStringList &&
        queryTimestampList == other.queryTimestampList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryBooleanList.hashCode);
    _$hash = $jc(_$hash, queryDoubleList.hashCode);
    _$hash = $jc(_$hash, queryEnumList.hashCode);
    _$hash = $jc(_$hash, queryIntegerEnumList.hashCode);
    _$hash = $jc(_$hash, queryIntegerList.hashCode);
    _$hash = $jc(_$hash, queryStringList.hashCode);
    _$hash = $jc(_$hash, queryTimestampList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OmitsSerializingEmptyListsInputBuilder
    implements
        Builder<OmitsSerializingEmptyListsInput,
            OmitsSerializingEmptyListsInputBuilder> {
  _$OmitsSerializingEmptyListsInput? _$v;

  _i4.ListBuilder<bool>? _queryBooleanList;
  _i4.ListBuilder<bool> get queryBooleanList =>
      _$this._queryBooleanList ??= new _i4.ListBuilder<bool>();
  set queryBooleanList(_i4.ListBuilder<bool>? queryBooleanList) =>
      _$this._queryBooleanList = queryBooleanList;

  _i4.ListBuilder<double>? _queryDoubleList;
  _i4.ListBuilder<double> get queryDoubleList =>
      _$this._queryDoubleList ??= new _i4.ListBuilder<double>();
  set queryDoubleList(_i4.ListBuilder<double>? queryDoubleList) =>
      _$this._queryDoubleList = queryDoubleList;

  _i4.ListBuilder<_i3.FooEnum>? _queryEnumList;
  _i4.ListBuilder<_i3.FooEnum> get queryEnumList =>
      _$this._queryEnumList ??= new _i4.ListBuilder<_i3.FooEnum>();
  set queryEnumList(_i4.ListBuilder<_i3.FooEnum>? queryEnumList) =>
      _$this._queryEnumList = queryEnumList;

  _i4.ListBuilder<int>? _queryIntegerEnumList;
  _i4.ListBuilder<int> get queryIntegerEnumList =>
      _$this._queryIntegerEnumList ??= new _i4.ListBuilder<int>();
  set queryIntegerEnumList(_i4.ListBuilder<int>? queryIntegerEnumList) =>
      _$this._queryIntegerEnumList = queryIntegerEnumList;

  _i4.ListBuilder<int>? _queryIntegerList;
  _i4.ListBuilder<int> get queryIntegerList =>
      _$this._queryIntegerList ??= new _i4.ListBuilder<int>();
  set queryIntegerList(_i4.ListBuilder<int>? queryIntegerList) =>
      _$this._queryIntegerList = queryIntegerList;

  _i4.ListBuilder<String>? _queryStringList;
  _i4.ListBuilder<String> get queryStringList =>
      _$this._queryStringList ??= new _i4.ListBuilder<String>();
  set queryStringList(_i4.ListBuilder<String>? queryStringList) =>
      _$this._queryStringList = queryStringList;

  _i4.ListBuilder<DateTime>? _queryTimestampList;
  _i4.ListBuilder<DateTime> get queryTimestampList =>
      _$this._queryTimestampList ??= new _i4.ListBuilder<DateTime>();
  set queryTimestampList(_i4.ListBuilder<DateTime>? queryTimestampList) =>
      _$this._queryTimestampList = queryTimestampList;

  OmitsSerializingEmptyListsInputBuilder() {
    OmitsSerializingEmptyListsInput._init(this);
  }

  OmitsSerializingEmptyListsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryBooleanList = $v.queryBooleanList?.toBuilder();
      _queryDoubleList = $v.queryDoubleList?.toBuilder();
      _queryEnumList = $v.queryEnumList?.toBuilder();
      _queryIntegerEnumList = $v.queryIntegerEnumList?.toBuilder();
      _queryIntegerList = $v.queryIntegerList?.toBuilder();
      _queryStringList = $v.queryStringList?.toBuilder();
      _queryTimestampList = $v.queryTimestampList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OmitsSerializingEmptyListsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsSerializingEmptyListsInput;
  }

  @override
  void update(void Function(OmitsSerializingEmptyListsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsSerializingEmptyListsInput build() => _build();

  _$OmitsSerializingEmptyListsInput _build() {
    _$OmitsSerializingEmptyListsInput _$result;
    try {
      _$result = _$v ??
          new _$OmitsSerializingEmptyListsInput._(
              queryBooleanList: _queryBooleanList?.build(),
              queryDoubleList: _queryDoubleList?.build(),
              queryEnumList: _queryEnumList?.build(),
              queryIntegerEnumList: _queryIntegerEnumList?.build(),
              queryIntegerList: _queryIntegerList?.build(),
              queryStringList: _queryStringList?.build(),
              queryTimestampList: _queryTimestampList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryBooleanList';
        _queryBooleanList?.build();
        _$failedField = 'queryDoubleList';
        _queryDoubleList?.build();
        _$failedField = 'queryEnumList';
        _queryEnumList?.build();
        _$failedField = 'queryIntegerEnumList';
        _queryIntegerEnumList?.build();
        _$failedField = 'queryIntegerList';
        _queryIntegerList?.build();
        _$failedField = 'queryStringList';
        _queryStringList?.build();
        _$failedField = 'queryTimestampList';
        _queryTimestampList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OmitsSerializingEmptyListsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OmitsSerializingEmptyListsInputPayload
    extends OmitsSerializingEmptyListsInputPayload {
  factory _$OmitsSerializingEmptyListsInputPayload(
          [void Function(OmitsSerializingEmptyListsInputPayloadBuilder)?
              updates]) =>
      (new OmitsSerializingEmptyListsInputPayloadBuilder()..update(updates))
          ._build();

  _$OmitsSerializingEmptyListsInputPayload._() : super._();

  @override
  OmitsSerializingEmptyListsInputPayload rebuild(
          void Function(OmitsSerializingEmptyListsInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsSerializingEmptyListsInputPayloadBuilder toBuilder() =>
      new OmitsSerializingEmptyListsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsSerializingEmptyListsInputPayload;
  }

  @override
  int get hashCode {
    return 909208018;
  }
}

class OmitsSerializingEmptyListsInputPayloadBuilder
    implements
        Builder<OmitsSerializingEmptyListsInputPayload,
            OmitsSerializingEmptyListsInputPayloadBuilder> {
  _$OmitsSerializingEmptyListsInputPayload? _$v;

  OmitsSerializingEmptyListsInputPayloadBuilder() {
    OmitsSerializingEmptyListsInputPayload._init(this);
  }

  @override
  void replace(OmitsSerializingEmptyListsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsSerializingEmptyListsInputPayload;
  }

  @override
  void update(
      void Function(OmitsSerializingEmptyListsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsSerializingEmptyListsInputPayload build() => _build();

  _$OmitsSerializingEmptyListsInputPayload _build() {
    final _$result = _$v ?? new _$OmitsSerializingEmptyListsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
