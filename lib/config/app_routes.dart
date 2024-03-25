import 'package:Hashi/pages/edit_profile_page.dart';
import 'package:Hashi/pages/home_page.dart';
import 'package:Hashi/pages/login_page.dart';
import 'package:Hashi/pages/main_page.dart';
import 'package:Hashi/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => const HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}
