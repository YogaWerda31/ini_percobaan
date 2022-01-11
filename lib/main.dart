import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  String _jk="";

void _pilihjk(String value){
    setState(() {
      _jk=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Formulir"),
        backgroundColor: Colors.teal,


      ),

      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  maxLines: 3,
                  decoration: new InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),

                new RadioListTile(
                  value: "Laki - Laki",
                  title: new Text("Laki - Laki"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihjk(value);
                  },
                  
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}