// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.client_vpn_endpoint;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnEndpoint extends ClientVpnEndpoint {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? description;
  @override
  final _i2.ClientVpnEndpointStatus? status;
  @override
  final String? creationTime;
  @override
  final String? deletionTime;
  @override
  final String? dnsName;
  @override
  final String? clientCidrBlock;
  @override
  final _i11.BuiltList<String>? dnsServers;
  @override
  final bool splitTunnel;
  @override
  final _i3.VpnProtocol? vpnProtocol;
  @override
  final _i4.TransportProtocol? transportProtocol;
  @override
  final int vpnPort;
  @override
  final _i11.BuiltList<_i5.AssociatedTargetNetwork>? associatedTargetNetworks;
  @override
  final String? serverCertificateArn;
  @override
  final _i11.BuiltList<_i6.ClientVpnAuthentication>? authenticationOptions;
  @override
  final _i7.ConnectionLogResponseOptions? connectionLogOptions;
  @override
  final _i11.BuiltList<_i8.Tag>? tags;
  @override
  final _i11.BuiltList<String>? securityGroupIds;
  @override
  final String? vpcId;
  @override
  final String? selfServicePortalUrl;
  @override
  final _i9.ClientConnectResponseOptions? clientConnectOptions;
  @override
  final int sessionTimeoutHours;
  @override
  final _i10.ClientLoginBannerResponseOptions? clientLoginBannerOptions;

  factory _$ClientVpnEndpoint(
          [void Function(ClientVpnEndpointBuilder)? updates]) =>
      (new ClientVpnEndpointBuilder()..update(updates))._build();

  _$ClientVpnEndpoint._(
      {this.clientVpnEndpointId,
      this.description,
      this.status,
      this.creationTime,
      this.deletionTime,
      this.dnsName,
      this.clientCidrBlock,
      this.dnsServers,
      required this.splitTunnel,
      this.vpnProtocol,
      this.transportProtocol,
      required this.vpnPort,
      this.associatedTargetNetworks,
      this.serverCertificateArn,
      this.authenticationOptions,
      this.connectionLogOptions,
      this.tags,
      this.securityGroupIds,
      this.vpcId,
      this.selfServicePortalUrl,
      this.clientConnectOptions,
      required this.sessionTimeoutHours,
      this.clientLoginBannerOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        splitTunnel, r'ClientVpnEndpoint', 'splitTunnel');
    BuiltValueNullFieldError.checkNotNull(
        vpnPort, r'ClientVpnEndpoint', 'vpnPort');
    BuiltValueNullFieldError.checkNotNull(
        sessionTimeoutHours, r'ClientVpnEndpoint', 'sessionTimeoutHours');
  }

  @override
  ClientVpnEndpoint rebuild(void Function(ClientVpnEndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnEndpointBuilder toBuilder() =>
      new ClientVpnEndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnEndpoint &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        description == other.description &&
        status == other.status &&
        creationTime == other.creationTime &&
        deletionTime == other.deletionTime &&
        dnsName == other.dnsName &&
        clientCidrBlock == other.clientCidrBlock &&
        dnsServers == other.dnsServers &&
        splitTunnel == other.splitTunnel &&
        vpnProtocol == other.vpnProtocol &&
        transportProtocol == other.transportProtocol &&
        vpnPort == other.vpnPort &&
        associatedTargetNetworks == other.associatedTargetNetworks &&
        serverCertificateArn == other.serverCertificateArn &&
        authenticationOptions == other.authenticationOptions &&
        connectionLogOptions == other.connectionLogOptions &&
        tags == other.tags &&
        securityGroupIds == other.securityGroupIds &&
        vpcId == other.vpcId &&
        selfServicePortalUrl == other.selfServicePortalUrl &&
        clientConnectOptions == other.clientConnectOptions &&
        sessionTimeoutHours == other.sessionTimeoutHours &&
        clientLoginBannerOptions == other.clientLoginBannerOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, dnsName.hashCode);
    _$hash = $jc(_$hash, clientCidrBlock.hashCode);
    _$hash = $jc(_$hash, dnsServers.hashCode);
    _$hash = $jc(_$hash, splitTunnel.hashCode);
    _$hash = $jc(_$hash, vpnProtocol.hashCode);
    _$hash = $jc(_$hash, transportProtocol.hashCode);
    _$hash = $jc(_$hash, vpnPort.hashCode);
    _$hash = $jc(_$hash, associatedTargetNetworks.hashCode);
    _$hash = $jc(_$hash, serverCertificateArn.hashCode);
    _$hash = $jc(_$hash, authenticationOptions.hashCode);
    _$hash = $jc(_$hash, connectionLogOptions.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, selfServicePortalUrl.hashCode);
    _$hash = $jc(_$hash, clientConnectOptions.hashCode);
    _$hash = $jc(_$hash, sessionTimeoutHours.hashCode);
    _$hash = $jc(_$hash, clientLoginBannerOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnEndpointBuilder
    implements Builder<ClientVpnEndpoint, ClientVpnEndpointBuilder> {
  _$ClientVpnEndpoint? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ClientVpnEndpointStatusBuilder? _status;
  _i2.ClientVpnEndpointStatusBuilder get status =>
      _$this._status ??= new _i2.ClientVpnEndpointStatusBuilder();
  set status(_i2.ClientVpnEndpointStatusBuilder? status) =>
      _$this._status = status;

  String? _creationTime;
  String? get creationTime => _$this._creationTime;
  set creationTime(String? creationTime) => _$this._creationTime = creationTime;

  String? _deletionTime;
  String? get deletionTime => _$this._deletionTime;
  set deletionTime(String? deletionTime) => _$this._deletionTime = deletionTime;

  String? _dnsName;
  String? get dnsName => _$this._dnsName;
  set dnsName(String? dnsName) => _$this._dnsName = dnsName;

  String? _clientCidrBlock;
  String? get clientCidrBlock => _$this._clientCidrBlock;
  set clientCidrBlock(String? clientCidrBlock) =>
      _$this._clientCidrBlock = clientCidrBlock;

  _i11.ListBuilder<String>? _dnsServers;
  _i11.ListBuilder<String> get dnsServers =>
      _$this._dnsServers ??= new _i11.ListBuilder<String>();
  set dnsServers(_i11.ListBuilder<String>? dnsServers) =>
      _$this._dnsServers = dnsServers;

  bool? _splitTunnel;
  bool? get splitTunnel => _$this._splitTunnel;
  set splitTunnel(bool? splitTunnel) => _$this._splitTunnel = splitTunnel;

  _i3.VpnProtocol? _vpnProtocol;
  _i3.VpnProtocol? get vpnProtocol => _$this._vpnProtocol;
  set vpnProtocol(_i3.VpnProtocol? vpnProtocol) =>
      _$this._vpnProtocol = vpnProtocol;

  _i4.TransportProtocol? _transportProtocol;
  _i4.TransportProtocol? get transportProtocol => _$this._transportProtocol;
  set transportProtocol(_i4.TransportProtocol? transportProtocol) =>
      _$this._transportProtocol = transportProtocol;

  int? _vpnPort;
  int? get vpnPort => _$this._vpnPort;
  set vpnPort(int? vpnPort) => _$this._vpnPort = vpnPort;

  _i11.ListBuilder<_i5.AssociatedTargetNetwork>? _associatedTargetNetworks;
  _i11.ListBuilder<_i5.AssociatedTargetNetwork> get associatedTargetNetworks =>
      _$this._associatedTargetNetworks ??=
          new _i11.ListBuilder<_i5.AssociatedTargetNetwork>();
  set associatedTargetNetworks(
          _i11.ListBuilder<_i5.AssociatedTargetNetwork>?
              associatedTargetNetworks) =>
      _$this._associatedTargetNetworks = associatedTargetNetworks;

  String? _serverCertificateArn;
  String? get serverCertificateArn => _$this._serverCertificateArn;
  set serverCertificateArn(String? serverCertificateArn) =>
      _$this._serverCertificateArn = serverCertificateArn;

  _i11.ListBuilder<_i6.ClientVpnAuthentication>? _authenticationOptions;
  _i11.ListBuilder<_i6.ClientVpnAuthentication> get authenticationOptions =>
      _$this._authenticationOptions ??=
          new _i11.ListBuilder<_i6.ClientVpnAuthentication>();
  set authenticationOptions(
          _i11.ListBuilder<_i6.ClientVpnAuthentication>?
              authenticationOptions) =>
      _$this._authenticationOptions = authenticationOptions;

  _i7.ConnectionLogResponseOptionsBuilder? _connectionLogOptions;
  _i7.ConnectionLogResponseOptionsBuilder get connectionLogOptions =>
      _$this._connectionLogOptions ??=
          new _i7.ConnectionLogResponseOptionsBuilder();
  set connectionLogOptions(
          _i7.ConnectionLogResponseOptionsBuilder? connectionLogOptions) =>
      _$this._connectionLogOptions = connectionLogOptions;

  _i11.ListBuilder<_i8.Tag>? _tags;
  _i11.ListBuilder<_i8.Tag> get tags =>
      _$this._tags ??= new _i11.ListBuilder<_i8.Tag>();
  set tags(_i11.ListBuilder<_i8.Tag>? tags) => _$this._tags = tags;

  _i11.ListBuilder<String>? _securityGroupIds;
  _i11.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i11.ListBuilder<String>();
  set securityGroupIds(_i11.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _selfServicePortalUrl;
  String? get selfServicePortalUrl => _$this._selfServicePortalUrl;
  set selfServicePortalUrl(String? selfServicePortalUrl) =>
      _$this._selfServicePortalUrl = selfServicePortalUrl;

  _i9.ClientConnectResponseOptionsBuilder? _clientConnectOptions;
  _i9.ClientConnectResponseOptionsBuilder get clientConnectOptions =>
      _$this._clientConnectOptions ??=
          new _i9.ClientConnectResponseOptionsBuilder();
  set clientConnectOptions(
          _i9.ClientConnectResponseOptionsBuilder? clientConnectOptions) =>
      _$this._clientConnectOptions = clientConnectOptions;

  int? _sessionTimeoutHours;
  int? get sessionTimeoutHours => _$this._sessionTimeoutHours;
  set sessionTimeoutHours(int? sessionTimeoutHours) =>
      _$this._sessionTimeoutHours = sessionTimeoutHours;

  _i10.ClientLoginBannerResponseOptionsBuilder? _clientLoginBannerOptions;
  _i10.ClientLoginBannerResponseOptionsBuilder get clientLoginBannerOptions =>
      _$this._clientLoginBannerOptions ??=
          new _i10.ClientLoginBannerResponseOptionsBuilder();
  set clientLoginBannerOptions(
          _i10.ClientLoginBannerResponseOptionsBuilder?
              clientLoginBannerOptions) =>
      _$this._clientLoginBannerOptions = clientLoginBannerOptions;

  ClientVpnEndpointBuilder() {
    ClientVpnEndpoint._init(this);
  }

  ClientVpnEndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _description = $v.description;
      _status = $v.status?.toBuilder();
      _creationTime = $v.creationTime;
      _deletionTime = $v.deletionTime;
      _dnsName = $v.dnsName;
      _clientCidrBlock = $v.clientCidrBlock;
      _dnsServers = $v.dnsServers?.toBuilder();
      _splitTunnel = $v.splitTunnel;
      _vpnProtocol = $v.vpnProtocol;
      _transportProtocol = $v.transportProtocol;
      _vpnPort = $v.vpnPort;
      _associatedTargetNetworks = $v.associatedTargetNetworks?.toBuilder();
      _serverCertificateArn = $v.serverCertificateArn;
      _authenticationOptions = $v.authenticationOptions?.toBuilder();
      _connectionLogOptions = $v.connectionLogOptions?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _vpcId = $v.vpcId;
      _selfServicePortalUrl = $v.selfServicePortalUrl;
      _clientConnectOptions = $v.clientConnectOptions?.toBuilder();
      _sessionTimeoutHours = $v.sessionTimeoutHours;
      _clientLoginBannerOptions = $v.clientLoginBannerOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnEndpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnEndpoint;
  }

  @override
  void update(void Function(ClientVpnEndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnEndpoint build() => _build();

  _$ClientVpnEndpoint _build() {
    _$ClientVpnEndpoint _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnEndpoint._(
              clientVpnEndpointId: clientVpnEndpointId,
              description: description,
              status: _status?.build(),
              creationTime: creationTime,
              deletionTime: deletionTime,
              dnsName: dnsName,
              clientCidrBlock: clientCidrBlock,
              dnsServers: _dnsServers?.build(),
              splitTunnel: BuiltValueNullFieldError.checkNotNull(
                  splitTunnel, r'ClientVpnEndpoint', 'splitTunnel'),
              vpnProtocol: vpnProtocol,
              transportProtocol: transportProtocol,
              vpnPort: BuiltValueNullFieldError.checkNotNull(
                  vpnPort, r'ClientVpnEndpoint', 'vpnPort'),
              associatedTargetNetworks: _associatedTargetNetworks?.build(),
              serverCertificateArn: serverCertificateArn,
              authenticationOptions: _authenticationOptions?.build(),
              connectionLogOptions: _connectionLogOptions?.build(),
              tags: _tags?.build(),
              securityGroupIds: _securityGroupIds?.build(),
              vpcId: vpcId,
              selfServicePortalUrl: selfServicePortalUrl,
              clientConnectOptions: _clientConnectOptions?.build(),
              sessionTimeoutHours: BuiltValueNullFieldError.checkNotNull(
                  sessionTimeoutHours,
                  r'ClientVpnEndpoint',
                  'sessionTimeoutHours'),
              clientLoginBannerOptions: _clientLoginBannerOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'dnsServers';
        _dnsServers?.build();

        _$failedField = 'associatedTargetNetworks';
        _associatedTargetNetworks?.build();

        _$failedField = 'authenticationOptions';
        _authenticationOptions?.build();
        _$failedField = 'connectionLogOptions';
        _connectionLogOptions?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();

        _$failedField = 'clientConnectOptions';
        _clientConnectOptions?.build();

        _$failedField = 'clientLoginBannerOptions';
        _clientLoginBannerOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientVpnEndpoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
