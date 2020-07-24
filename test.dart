import 'package:flutter/material.dart';

mytest() {
  var Design = MaterialApp(
    home: Scaffold(
      body: Center(
          child: Container(
        width: 300,
        height: 300,
        child: Text(
          "Hello Samridhi",
        ),
        alignment: Alignment.bottomCenter,
        //color: Colors.yellowAccent,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/samridhijain/Flutter-Day-4/master/flutterimage.jpg'),
              fit: BoxFit.cover,
            ),
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(
              width: 5,
              color: Colors.indigo,
            )),
      )),
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Icon(Icons.album, color: Colors.amber.shade300),
        backgroundColor: Colors.red,
        title: Text(
          "Sarvottam Rolling Mills",
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              //textAlign: TextAlign.center,
              letterSpacing: 1.0),
        ),
        actions: <Widget>[],
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
  return Design;
}
