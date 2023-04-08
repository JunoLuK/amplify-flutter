// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_network_insights_access_scope_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInsightsAccessScopeRequest
    extends CreateNetworkInsightsAccessScopeRequest {
  @override
  final _i5.BuiltList<_i3.AccessScopePathRequest>? matchPaths;
  @override
  final _i5.BuiltList<_i3.AccessScopePathRequest>? excludePaths;
  @override
  final String clientToken;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateNetworkInsightsAccessScopeRequest(
          [void Function(CreateNetworkInsightsAccessScopeRequestBuilder)?
              updates]) =>
      (new CreateNetworkInsightsAccessScopeRequestBuilder()..update(updates))
          ._build();

  _$CreateNetworkInsightsAccessScopeRequest._(
      {this.matchPaths,
      this.excludePaths,
      required this.clientToken,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientToken, r'CreateNetworkInsightsAccessScopeRequest', 'clientToken');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkInsightsAccessScopeRequest', 'dryRun');
  }

  @override
  CreateNetworkInsightsAccessScopeRequest rebuild(
          void Function(CreateNetworkInsightsAccessScopeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInsightsAccessScopeRequestBuilder toBuilder() =>
      new CreateNetworkInsightsAccessScopeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInsightsAccessScopeRequest &&
        matchPaths == other.matchPaths &&
        excludePaths == other.excludePaths &&
        clientToken == other.clientToken &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matchPaths.hashCode);
    _$hash = $jc(_$hash, excludePaths.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInsightsAccessScopeRequestBuilder
    implements
        Builder<CreateNetworkInsightsAccessScopeRequest,
            CreateNetworkInsightsAccessScopeRequestBuilder> {
  _$CreateNetworkInsightsAccessScopeRequest? _$v;

  _i5.ListBuilder<_i3.AccessScopePathRequest>? _matchPaths;
  _i5.ListBuilder<_i3.AccessScopePathRequest> get matchPaths =>
      _$this._matchPaths ??= new _i5.ListBuilder<_i3.AccessScopePathRequest>();
  set matchPaths(_i5.ListBuilder<_i3.AccessScopePathRequest>? matchPaths) =>
      _$this._matchPaths = matchPaths;

  _i5.ListBuilder<_i3.AccessScopePathRequest>? _excludePaths;
  _i5.ListBuilder<_i3.AccessScopePathRequest> get excludePaths =>
      _$this._excludePaths ??=
          new _i5.ListBuilder<_i3.AccessScopePathRequest>();
  set excludePaths(_i5.ListBuilder<_i3.AccessScopePathRequest>? excludePaths) =>
      _$this._excludePaths = excludePaths;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i5.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateNetworkInsightsAccessScopeRequestBuilder() {
    CreateNetworkInsightsAccessScopeRequest._init(this);
  }

  CreateNetworkInsightsAccessScopeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchPaths = $v.matchPaths?.toBuilder();
      _excludePaths = $v.excludePaths?.toBuilder();
      _clientToken = $v.clientToken;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInsightsAccessScopeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInsightsAccessScopeRequest;
  }

  @override
  void update(
      void Function(CreateNetworkInsightsAccessScopeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInsightsAccessScopeRequest build() => _build();

  _$CreateNetworkInsightsAccessScopeRequest _build() {
    _$CreateNetworkInsightsAccessScopeRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInsightsAccessScopeRequest._(
              matchPaths: _matchPaths?.build(),
              excludePaths: _excludePaths?.build(),
              clientToken: BuiltValueNullFieldError.checkNotNull(clientToken,
                  r'CreateNetworkInsightsAccessScopeRequest', 'clientToken'),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateNetworkInsightsAccessScopeRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchPaths';
        _matchPaths?.build();
        _$failedField = 'excludePaths';
        _excludePaths?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInsightsAccessScopeRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
