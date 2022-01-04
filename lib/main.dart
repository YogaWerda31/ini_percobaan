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
              ),
            ),

            SizedBox(height: 20,),

            Text("Selamat Datang di Sports Nutrition, Silahkan Login", style: TextStyle(fontSize: 20, color: Colors.black87),),

            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.person, size: 40,),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87)
              )
            ),

            SizedBox(height: 20,),

             TextFormField(
               obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.lock, size: 40,),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87)
              )
             ),

             SizedBox(height: 20,),

             Card(
               color: Colors.black87,
               elevation: 5,
               child: Container(
                 height: 50,
                 child: InkWell(
                   splashColor: Colors.white,
                   onTap: () {},
                   child: Center(
                     child: Text("Masuk", style: TextStyle(fontSize: 20, color: Colors.white,)),
                   ),
                 )
               ),
             )
          ],
        ),
      )
    );
  }
}