import 'package:code_test/views/home/bindings/home_binding.dart';
import 'package:code_test/views/home/views/home_page.dart';
import 'package:get/get.dart';

class AppRoute {
  static String get initialRoute => HomePage.route;
  static List<GetPage> get pages => [
        GetPage(
            name: HomePage.route,
            binding: HomeBinding(),
            page: () => const HomePage(),
           ),
      ];
}