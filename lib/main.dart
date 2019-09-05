import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(

  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'UI widgets',
    home: Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: getListView(),
    ),
  )
);

Widget getListView(){
  var listView=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscap'),
        subtitle: Text("View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          Fluttertoast.showToast(
              msg: "Landscap click",
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIos: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
      ),   ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Laptop'),
        subtitle: Text("lappy"),
        trailing: Icon(Icons.wb_sunny),
      ),   ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
        subtitle: Text("mobi"),
        trailing: Icon(Icons.wb_sunny),
      ),
      Text("2nd type list element "),
      Container(color: Colors.red,height: 50,)
    ],
  );
      return listView;

}

