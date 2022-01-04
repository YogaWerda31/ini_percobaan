import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
              )
    );
  }
}  

//Login Page//
class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  String username = "Yoga";
  String password = "halo123";
  String alert = "Siap Login";
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
void prosesLogin() {}
TextEditingController usernameInput = new TextEditingController();
TextEditingController passwordInput = new TextEditingController();


@override
Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Colors.lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration:
            BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
            child: Center(
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Selamat Datang di Sports Nutrion, Silahkan Masuk",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
            height: 20,
          ),
          Text(alert),
          SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              TextFormField(
                controller: usernameInput,
                validator: (value){
                  if (value.isEmpty){
                    return "Isi Username Anda";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    hintText: "Masukkan Username",
                    hintStyle: TextStyle(color: Colors.black87)),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      TextFormField(
                        controller: passwordInput,
                        validator: (value){
                          if (value.isEmpty){
                            return "Isi Password Anda";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                            prefixIcon: Icon(
                              Icons.lock,size: 40,
                            ),
                            hintText: "Masukkan Password",
                            hintStyle: TextStyle(color: Colors.black87)),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black87)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )
    )
  );
}