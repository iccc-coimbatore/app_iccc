import 'package:get/get.dart';
import '../../presentation/screens/splash/splash_screen.dart';
import '../../presentation/screens/login/login_screen.dart';
import '../../presentation/screens/dashboard/dashboard_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String departmentDetail = '/department-detail';
  static const String zoneDetail = '/zone-detail';
  static const String wardDetail = '/ward-detail';
  static const String alerts = '/alerts';
  static const String projects = '/projects';
  static const String analytics = '/analytics';

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: dashboard, page: () => const DashboardScreen()),
  ];
}
