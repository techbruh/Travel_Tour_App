import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:travel_tour_app/features/home/presentation/screens/onboarding_1.dart';

part 'app_routes.dart';

class AppPages{
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    //TODO: Input all Get app pages
    GetPage(name: Routes.HOME_SCREEN, page: ()=> const HomePage()),
  ];

}