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

import 'package:args/command_runner.dart';

import '../tool/commands/deps_command.dart';
import '../tool/commands/generate_sdk_command.dart';
import '../tool/commands/list_packages_command.dart';

Future<void> main(List<String> args) async {
  CommandRunner('aft', 'Amplify Flutter repo tools')
    ..addCommand(GenerateSdkCommand())
    ..addCommand(ListPackagesCommand())
    ..addCommand(DepsCommand())
    ..run(args);
}
