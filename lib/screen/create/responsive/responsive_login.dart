import 'package:flutter/cupertino.dart';

class ResponsiveLogin extends StatelessWidget {
  final Widget desktop;
  final Widget phone;

  const ResponsiveLogin({
    Key? key,
    required this.desktop,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 700) {
          return desktop;
        } else {
          return phone;
        }
      },
    );
  }
}
