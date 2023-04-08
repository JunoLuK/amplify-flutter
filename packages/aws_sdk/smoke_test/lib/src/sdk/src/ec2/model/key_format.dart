// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.key_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class KeyFormat extends _i1.SmithyEnum<KeyFormat> {
  const KeyFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const KeyFormat._sdkUnknown(String value) : super.sdkUnknown(value);

  static const pem = KeyFormat._(
    0,
    'pem',
    'pem',
  );

  static const ppk = KeyFormat._(
    1,
    'ppk',
    'ppk',
  );

  /// All values of [KeyFormat].
  static const values = <KeyFormat>[
    KeyFormat.pem,
    KeyFormat.ppk,
  ];

  static const List<_i1.SmithySerializer<KeyFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'KeyFormat',
      values: values,
      sdkUnknown: KeyFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension KeyFormatHelpers on List<KeyFormat> {
  /// Returns the value of [KeyFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  KeyFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [KeyFormat] whose value matches [value].
  KeyFormat byValue(String value) => firstWhere((el) => el.value == value);
}
