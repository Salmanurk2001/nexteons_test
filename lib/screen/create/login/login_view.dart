import 'package:flutter/cupertino.dart';

import 'package:nexteon_test/screen/create/login/desktop_login.dart';
import 'package:nexteon_test/screen/create/login/phone_login.dart';
import 'package:nexteon_test/screen/create/responsive/responsive_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String tag = DateTime.now().toString();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLogin(
      desktop: Desktoplogin(),
      phone: PhoneLogin(),
    );
  }
}
