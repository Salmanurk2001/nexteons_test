import 'package:go_router/go_router.dart';
import 'package:nexteon_test/screen/create/emergencyKit/desktop_kit.dart';

import 'package:nexteon_test/screen/create/login/login_view.dart';
import 'package:nexteon_test/utils/constents.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorkey,
  redirect: (context, state) async {
    if (await isTokenStored() == false) {
      return '/loginscreen';
    } else {
      return null;
    }
  },
  initialLocation: '/loginscreen',
  routes: [
    GoRoute(
      path: '/loginscreen',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/emerhencyscreen',
      builder: (context, state) => DesktopEmergency(),
    ),
  ],
);
Future<bool> isTokenStored() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  String? accessToken = preferences.getString("accessToken");
  print(accessToken);
  return accessToken != null;
}
