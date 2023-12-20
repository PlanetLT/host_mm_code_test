import 'package:code_test/core/const/color.dart';
import 'package:code_test/core/log/loger.dart';
import 'package:code_test/views/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CodeTest extends StatefulWidget {
  const CodeTest({super.key});

  @override
  State<CodeTest> createState() => _TestAppState();
}

class _TestAppState extends State<CodeTest> {

  @override
  void initState() {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "CodeTest app",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initialRoute,
      getPages: AppRoute.pages,
      defaultTransition: Transition.fade,
      logWriterCallback: (message, {bool isError = false}) => logger.d(message),
      theme: ThemeData(
        scaffoldBackgroundColor: CTColor.backgroundMainColor,
        primaryColor:CTColor.secondMainColor,
         toggleableActiveColor: CTColor.secondMainColor,
        colorScheme: const ColorScheme.light().copyWith(
          secondary:CTColor.mainColor,
          primary:CTColor.secondMainColor,
        ),
      ),
    
    );
  }
}