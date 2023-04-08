// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.bare_metal; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BareMetal extends _i1.SmithyEnum<BareMetal> {
  const BareMetal._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BareMetal._sdkUnknown(String value) : super.sdkUnknown(value);

  static const excluded = BareMetal._(
    0,
    'EXCLUDED',
    'excluded',
  );

  static const included = BareMetal._(
    1,
    'INCLUDED',
    'included',
  );

  static const required = BareMetal._(
    2,
    'REQUIRED',
    'required',
  );

  /// All values of [BareMetal].
  static const values = <BareMetal>[
    BareMetal.excluded,
    BareMetal.included,
    BareMetal.required,
  ];

  static const List<_i1.SmithySerializer<BareMetal>> serializers = [
    _i1.SmithyEnumSerializer(
      'BareMetal',
      values: values,
      sdkUnknown: BareMetal._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BareMetalHelpers on List<BareMetal> {
  /// Returns the value of [BareMetal] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BareMetal byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BareMetal] whose value matches [value].
  BareMetal byValue(String value) => firstWhere((el) => el.value == value);
}
