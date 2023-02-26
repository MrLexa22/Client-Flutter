import 'package:flutter/cupertino.dart';
import 'package:flutter_work_with_api/app/ui/main_app_runner.dart';

import 'app/ui/main_app_builder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final env = String.fromEnvironment("env", defaultValue: "prod");
  final runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
