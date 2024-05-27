import 'package:flutter/material.dart';
import 'package:nexteon_test/controller/login_controller.dart';
import 'package:nexteon_test/utils/formvalidation.dart';

class PhoneLogin extends StatefulWidget {
  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  LoginController controller = LoginController();
  Errorvalidation validation = Errorvalidation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/image.png',
                scale: 10,
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 300,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back! Glad to',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                          Text(
                            'see you again',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            controller: controller.emailController,
                            validator: (value) => validation.emailAdress(value),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email Adress"),
                          ),
                          SizedBox(height: 0.0),
                          TextFormField(
                            controller: controller.passwordController,
                            validator: (value) => validation.password(value),
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Password"),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forget Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          InkWell(
                            onTap: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.getData();
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 700,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Text("Don't have any account?Register Now"),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
