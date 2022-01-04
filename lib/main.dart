import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black12,
        
      )
    );
  }
}  

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:
      new Center(
        child: new Text("Hallo World"),
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
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.lightBlue,
        child: Column(
          children: <Widget> [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle,

              ),
              child: Center(
                child: Icon(Icons.person, size:50, color: Colors.white10,),

              )
            )
          ]
        )
      )
    );
  }
}