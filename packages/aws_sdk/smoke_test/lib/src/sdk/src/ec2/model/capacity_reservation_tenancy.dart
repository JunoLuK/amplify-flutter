// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation_tenancy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CapacityReservationTenancy
    extends _i1.SmithyEnum<CapacityReservationTenancy> {
  const CapacityReservationTenancy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CapacityReservationTenancy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const dedicated = CapacityReservationTenancy._(
    0,
    'dedicated',
    'dedicated',
  );

  static const default$ = CapacityReservationTenancy._(
    1,
    'default',
    'default',
  );

  /// All values of [CapacityReservationTenancy].
  static const values = <CapacityReservationTenancy>[
    CapacityReservationTenancy.dedicated,
    CapacityReservationTenancy.default$,
  ];

  static const List<_i1.SmithySerializer<CapacityReservationTenancy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CapacityReservationTenancy',
      values: values,
      sdkUnknown: CapacityReservationTenancy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CapacityReservationTenancyHelpers
    on List<CapacityReservationTenancy> {
  /// Returns the value of [CapacityReservationTenancy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CapacityReservationTenancy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CapacityReservationTenancy] whose value matches [value].
  CapacityReservationTenancy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
