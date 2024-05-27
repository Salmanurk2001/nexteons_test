import 'package:flutter/material.dart';

class DesktopEmergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Image.asset('assets/images/image.png'),
          onPressed: () {},
        ),
        title: Text('Emergency Kit'),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/image.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 156, 236, 236),
          height: 500,
          width: 400,
          child: Column(
            children: [
              Container(
                  color: Color.fromARGB(255, 52, 187, 176),
                  margin: EdgeInsets.all(16.0),
                  height: 100,
                  width: 500,
                  child: Center(
                      child: Column(
                    children: [
                      Text("Add your emergency contacts to "),
                      Text("have them at your fingertips!"),
                    ],
                  ))),
              Container(
                  color: Color.fromARGB(255, 253, 253, 253),
                  margin: EdgeInsets.all(16.0),
                  height: 330,
                  width: 500,
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Name"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Role"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText:
                                        "Contact number with country code"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Other Emergency Details"),
                              )
                            ])),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
