import 'package:flutter/material.dart';
import 'package:nexteon_test/controller/login_controller.dart';
import 'package:nexteon_test/utils/formvalidation.dart';

class Desktoplogin extends StatefulWidget {
  @override
  State<Desktoplogin> createState() => _DesktoploginState();
}

class _DesktoploginState extends State<Desktoplogin> {
  LoginController controller = LoginController();
  Errorvalidation validation = Errorvalidation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color(0xff49B1FC),
              height: 700,
              width: 500,
              child: Image.asset(
                'assets/images/image.png',
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Container(
                  height: 700,
                  width: 800,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!Glad to',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        // SizedBox(height: 5.0),
                        Text(
                          'See you again',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        SizedBox(height: 10.0),

                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: controller.emailController,
                          validator: (value) => validation.emailAdress(value),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email Address"),
                        ),
                        SizedBox(height: 20.0),

                        SizedBox(height: 10.0),
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
                            width: 800,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text('Login'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text("Don't have any account?Register Now"),
                              // Row(children: [Text("RegisterNow")]),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
