// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:code_builder/code_builder.dart';

/// Allocator for Amplify models.
class AmplifyAllocator implements Allocator {
  final _imports = <String>{};

  static const _doNotImport = [
    'dart:core',
  ];

  @override
  String allocate(Reference reference) {
    final url = reference.url;
    if (url != null && !_doNotImport.contains(url)) {
      _imports.add(url);
    }
    return reference.symbol!;
  }

  @override
  Iterable<Directive> get imports => _imports.map(Directive.import);
}
