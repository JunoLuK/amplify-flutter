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

import 'dart:io';

import 'amplify_command.dart';

/// Command to list all Dart/Flutter packages in the repo.
class ListPackagesCommand extends AmplifyCommand<void> {
  @override
  String get description => 'Lists all packages in the Amplify Flutter repo';

  @override
  String get name => 'list';

  @override
  Future<void> run() async {
    for (final package in await allPackages) {
      stdout.writeln(package.name);
    }
  }
}
