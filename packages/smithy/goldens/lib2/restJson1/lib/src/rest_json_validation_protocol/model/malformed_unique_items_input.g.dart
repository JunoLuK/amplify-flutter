// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_unique_items_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedUniqueItemsInput extends MalformedUniqueItemsInput {
  @override
  final _i9.BuiltSet<_i3.Uint8List>? blobList;
  @override
  final _i9.BuiltSet<bool>? booleanList;
  @override
  final _i9.BuiltSet<int>? byteList;
  @override
  final _i9.BuiltSet<DateTime>? dateTimeList;
  @override
  final _i9.BuiltSet<_i4.FooEnum>? enumList;
  @override
  final _i9.BuiltSet<DateTime>? httpDateList;
  @override
  final _i9.BuiltSet<_i5.IntegerEnum>? intEnumList;
  @override
  final _i9.BuiltSet<int>? integerList;
  @override
  final _i9.BuiltSet<_i9.BuiltList<String>>? listList;
  @override
  final _i9.BuiltSet<_i6.Int64>? longList;
  @override
  final _i9.BuiltSet<int>? shortList;
  @override
  final _i9.BuiltSet<String>? stringList;
  @override
  final _i9.BuiltSet<_i7.GreetingStruct>? structureList;
  @override
  final _i9.BuiltSet<DateTime>? timestampList;
  @override
  final _i9.BuiltSet<_i8.FooUnion>? unionList;

  factory _$MalformedUniqueItemsInput(
          [void Function(MalformedUniqueItemsInputBuilder)? updates]) =>
      (new MalformedUniqueItemsInputBuilder()..update(updates))._build();

  _$MalformedUniqueItemsInput._(
      {this.blobList,
      this.booleanList,
      this.byteList,
      this.dateTimeList,
      this.enumList,
      this.httpDateList,
      this.intEnumList,
      this.integerList,
      this.listList,
      this.longList,
      this.shortList,
      this.stringList,
      this.structureList,
      this.timestampList,
      this.unionList})
      : super._();

  @override
  MalformedUniqueItemsInput rebuild(
          void Function(MalformedUniqueItemsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedUniqueItemsInputBuilder toBuilder() =>
      new MalformedUniqueItemsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedUniqueItemsInput &&
        blobList == other.blobList &&
        booleanList == other.booleanList &&
        byteList == other.byteList &&
        dateTimeList == other.dateTimeList &&
        enumList == other.enumList &&
        httpDateList == other.httpDateList &&
        intEnumList == other.intEnumList &&
        integerList == other.integerList &&
        listList == other.listList &&
        longList == other.longList &&
        shortList == other.shortList &&
        stringList == other.stringList &&
        structureList == other.structureList &&
        timestampList == other.timestampList &&
        unionList == other.unionList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blobList.hashCode);
    _$hash = $jc(_$hash, booleanList.hashCode);
    _$hash = $jc(_$hash, byteList.hashCode);
    _$hash = $jc(_$hash, dateTimeList.hashCode);
    _$hash = $jc(_$hash, enumList.hashCode);
    _$hash = $jc(_$hash, httpDateList.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, integerList.hashCode);
    _$hash = $jc(_$hash, listList.hashCode);
    _$hash = $jc(_$hash, longList.hashCode);
    _$hash = $jc(_$hash, shortList.hashCode);
    _$hash = $jc(_$hash, stringList.hashCode);
    _$hash = $jc(_$hash, structureList.hashCode);
    _$hash = $jc(_$hash, timestampList.hashCode);
    _$hash = $jc(_$hash, unionList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedUniqueItemsInputBuilder
    implements
        Builder<MalformedUniqueItemsInput, MalformedUniqueItemsInputBuilder> {
  _$MalformedUniqueItemsInput? _$v;

  _i9.SetBuilder<_i3.Uint8List>? _blobList;
  _i9.SetBuilder<_i3.Uint8List> get blobList =>
      _$this._blobList ??= new _i9.SetBuilder<_i3.Uint8List>();
  set blobList(_i9.SetBuilder<_i3.Uint8List>? blobList) =>
      _$this._blobList = blobList;

  _i9.SetBuilder<bool>? _booleanList;
  _i9.SetBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i9.SetBuilder<bool>();
  set booleanList(_i9.SetBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i9.SetBuilder<int>? _byteList;
  _i9.SetBuilder<int> get byteList =>
      _$this._byteList ??= new _i9.SetBuilder<int>();
  set byteList(_i9.SetBuilder<int>? byteList) => _$this._byteList = byteList;

  _i9.SetBuilder<DateTime>? _dateTimeList;
  _i9.SetBuilder<DateTime> get dateTimeList =>
      _$this._dateTimeList ??= new _i9.SetBuilder<DateTime>();
  set dateTimeList(_i9.SetBuilder<DateTime>? dateTimeList) =>
      _$this._dateTimeList = dateTimeList;

  _i9.SetBuilder<_i4.FooEnum>? _enumList;
  _i9.SetBuilder<_i4.FooEnum> get enumList =>
      _$this._enumList ??= new _i9.SetBuilder<_i4.FooEnum>();
  set enumList(_i9.SetBuilder<_i4.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i9.SetBuilder<DateTime>? _httpDateList;
  _i9.SetBuilder<DateTime> get httpDateList =>
      _$this._httpDateList ??= new _i9.SetBuilder<DateTime>();
  set httpDateList(_i9.SetBuilder<DateTime>? httpDateList) =>
      _$this._httpDateList = httpDateList;

  _i9.SetBuilder<_i5.IntegerEnum>? _intEnumList;
  _i9.SetBuilder<_i5.IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i9.SetBuilder<_i5.IntegerEnum>();
  set intEnumList(_i9.SetBuilder<_i5.IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i9.SetBuilder<int>? _integerList;
  _i9.SetBuilder<int> get integerList =>
      _$this._integerList ??= new _i9.SetBuilder<int>();
  set integerList(_i9.SetBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i9.SetBuilder<_i9.BuiltList<String>>? _listList;
  _i9.SetBuilder<_i9.BuiltList<String>> get listList =>
      _$this._listList ??= new _i9.SetBuilder<_i9.BuiltList<String>>();
  set listList(_i9.SetBuilder<_i9.BuiltList<String>>? listList) =>
      _$this._listList = listList;

  _i9.SetBuilder<_i6.Int64>? _longList;
  _i9.SetBuilder<_i6.Int64> get longList =>
      _$this._longList ??= new _i9.SetBuilder<_i6.Int64>();
  set longList(_i9.SetBuilder<_i6.Int64>? longList) =>
      _$this._longList = longList;

  _i9.SetBuilder<int>? _shortList;
  _i9.SetBuilder<int> get shortList =>
      _$this._shortList ??= new _i9.SetBuilder<int>();
  set shortList(_i9.SetBuilder<int>? shortList) =>
      _$this._shortList = shortList;

  _i9.SetBuilder<String>? _stringList;
  _i9.SetBuilder<String> get stringList =>
      _$this._stringList ??= new _i9.SetBuilder<String>();
  set stringList(_i9.SetBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i9.SetBuilder<_i7.GreetingStruct>? _structureList;
  _i9.SetBuilder<_i7.GreetingStruct> get structureList =>
      _$this._structureList ??= new _i9.SetBuilder<_i7.GreetingStruct>();
  set structureList(_i9.SetBuilder<_i7.GreetingStruct>? structureList) =>
      _$this._structureList = structureList;

  _i9.SetBuilder<DateTime>? _timestampList;
  _i9.SetBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i9.SetBuilder<DateTime>();
  set timestampList(_i9.SetBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  _i9.SetBuilder<_i8.FooUnion>? _unionList;
  _i9.SetBuilder<_i8.FooUnion> get unionList =>
      _$this._unionList ??= new _i9.SetBuilder<_i8.FooUnion>();
  set unionList(_i9.SetBuilder<_i8.FooUnion>? unionList) =>
      _$this._unionList = unionList;

  MalformedUniqueItemsInputBuilder() {
    MalformedUniqueItemsInput._init(this);
  }

  MalformedUniqueItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blobList = $v.blobList?.toBuilder();
      _booleanList = $v.booleanList?.toBuilder();
      _byteList = $v.byteList?.toBuilder();
      _dateTimeList = $v.dateTimeList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _httpDateList = $v.httpDateList?.toBuilder();
      _intEnumList = $v.intEnumList?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _listList = $v.listList?.toBuilder();
      _longList = $v.longList?.toBuilder();
      _shortList = $v.shortList?.toBuilder();
      _stringList = $v.stringList?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
      _unionList = $v.unionList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedUniqueItemsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedUniqueItemsInput;
  }

  @override
  void update(void Function(MalformedUniqueItemsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedUniqueItemsInput build() => _build();

  _$MalformedUniqueItemsInput _build() {
    _$MalformedUniqueItemsInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedUniqueItemsInput._(
              blobList: _blobList?.build(),
              booleanList: _booleanList?.build(),
              byteList: _byteList?.build(),
              dateTimeList: _dateTimeList?.build(),
              enumList: _enumList?.build(),
              httpDateList: _httpDateList?.build(),
              intEnumList: _intEnumList?.build(),
              integerList: _integerList?.build(),
              listList: _listList?.build(),
              longList: _longList?.build(),
              shortList: _shortList?.build(),
              stringList: _stringList?.build(),
              structureList: _structureList?.build(),
              timestampList: _timestampList?.build(),
              unionList: _unionList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blobList';
        _blobList?.build();
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'byteList';
        _byteList?.build();
        _$failedField = 'dateTimeList';
        _dateTimeList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'httpDateList';
        _httpDateList?.build();
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'listList';
        _listList?.build();
        _$failedField = 'longList';
        _longList?.build();
        _$failedField = 'shortList';
        _shortList?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'structureList';
        _structureList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
        _$failedField = 'unionList';
        _unionList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedUniqueItemsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
