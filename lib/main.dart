import 'dart:async';

import 'package:code_test/core/utils/hive_utils.dart';
import 'package:code_test/injection.dart';
import 'package:code_test/views/app.dart';
import 'package:flutter/material.dart';

FutureOr<void> main() async{
  await HiveUtils.registerHive();

  await initInjection();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CodeTest());
}