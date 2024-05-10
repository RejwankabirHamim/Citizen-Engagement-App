// import 'package:ecosync_app/data/model//.dart';
import 'package:ecosync_app/pages/edit_profile_page.dart';
import 'package:ecosync_app/pages/home_page.dart';
import 'package:ecosync_app/pages/login_page.dart';
import 'package:ecosync_app/pages/main_page.dart';
import 'package:ecosync_app/pages/nearby_page.dart';
import 'package:ecosync_app/pages/register_page.dart';
import 'package:ecosync_app/pages/report_issue_page.dart';
import 'package:ecosync_app/pages/user_page.dart';
import 'package:ecosync_app/provider/login_provider.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static final pages = {
    login: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: LoginPage(),
        ),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
    user: (context) => UserPage(),
    register: (context) => RegisterPage(),
    report: (context) => ReportIssuePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
  static const register='/register';
  static const report='/report';
}
