import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nexteon_test/ApiService/api_secvice.dart';
import 'package:nexteon_test/utils/constents.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = true.obs;
  var id = "".obs;

  getData() async {
    var data = await LoginService()
        .getData(emailController.text, passwordController.text);
    id.value = data;
    storeData(id.value);
    if (id.value.isNotEmpty) {
      navigatorkey.currentContext!.go("/loginscreen");
    } else {
      print("login issue");
    }
  }

  storeData(String tockenData) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString("loginId", tockenData);
  }

  removeTocken() async {
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove("loginId");
    id.value = "";
  }
}
