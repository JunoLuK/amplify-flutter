// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_on_demand_allocation_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetOnDemandAllocationStrategy
    extends _i1.SmithyEnum<FleetOnDemandAllocationStrategy> {
  const FleetOnDemandAllocationStrategy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FleetOnDemandAllocationStrategy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const lowestPrice = FleetOnDemandAllocationStrategy._(
    0,
    'LOWEST_PRICE',
    'lowest-price',
  );

  static const prioritized = FleetOnDemandAllocationStrategy._(
    1,
    'PRIORITIZED',
    'prioritized',
  );

  /// All values of [FleetOnDemandAllocationStrategy].
  static const values = <FleetOnDemandAllocationStrategy>[
    FleetOnDemandAllocationStrategy.lowestPrice,
    FleetOnDemandAllocationStrategy.prioritized,
  ];

  static const List<_i1.SmithySerializer<FleetOnDemandAllocationStrategy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetOnDemandAllocationStrategy',
      values: values,
      sdkUnknown: FleetOnDemandAllocationStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetOnDemandAllocationStrategyHelpers
    on List<FleetOnDemandAllocationStrategy> {
  /// Returns the value of [FleetOnDemandAllocationStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetOnDemandAllocationStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetOnDemandAllocationStrategy] whose value matches [value].
  FleetOnDemandAllocationStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
