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


  List<String> agama=["Islam","Kristen","Katolik","Hindu","Budha"];
  String _agama="Islam";


  String _jk="";




void _pilihjk(String value){
  setState(() {
    _jk=value;
  });
}

void _pilihAgama(String value){
  setState(() {
    _agama=value;
  });
}

void kirimdata(){
  AlertDialog alertDialog = new AlertDialog(
    content: new Container(
      height: 200.0,
      child: new Column(
        children: <Widget>[
          new Text("Nama Lengkap"),
        ],
      ),
    ),
  ),
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
                    hintText: "Alamat",
                    labelText: "Alamat",
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
                  onChanged:(String?value){
                    _pilihjk(value!);
                  },
                  activeColor: Colors.red,
                  subtitle: new Text("Pilih ini jika Anda Laki - Laki"),

                ),
                 new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged:(String?value){
                    _pilihjk(value!);
                  },
                  activeColor: Colors.red,
                  subtitle: new Text("Pilih ini jika Anda Perempuan"),
                  
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),

                new Row(
                  children: <Widget>[
                    new Text("Agama", style: new TextStyle(fontSize: 20.0, color: Colors.blue),),
                    new DropdownButton(
                onChanged: (String?value){
                        _pilihAgama(value!);
                      },
                      value: _agama,
                      items: agama.map((String value){
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),

                new RaisedButton(
                  child: new Text("Ok"),
                  color: Colors.red,
                  onPressed: (){kirimdata ();},
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}