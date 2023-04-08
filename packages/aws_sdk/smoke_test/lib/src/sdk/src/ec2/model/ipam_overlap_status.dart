// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_overlap_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamOverlapStatus extends _i1.SmithyEnum<IpamOverlapStatus> {
  const IpamOverlapStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IpamOverlapStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const ignored = IpamOverlapStatus._(
    0,
    'ignored',
    'ignored',
  );

  static const nonoverlapping = IpamOverlapStatus._(
    1,
    'nonoverlapping',
    'nonoverlapping',
  );

  static const overlapping = IpamOverlapStatus._(
    2,
    'overlapping',
    'overlapping',
  );

  /// All values of [IpamOverlapStatus].
  static const values = <IpamOverlapStatus>[
    IpamOverlapStatus.ignored,
    IpamOverlapStatus.nonoverlapping,
    IpamOverlapStatus.overlapping,
  ];

  static const List<_i1.SmithySerializer<IpamOverlapStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamOverlapStatus',
      values: values,
      sdkUnknown: IpamOverlapStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamOverlapStatusHelpers on List<IpamOverlapStatus> {
  /// Returns the value of [IpamOverlapStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamOverlapStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamOverlapStatus] whose value matches [value].
  IpamOverlapStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
