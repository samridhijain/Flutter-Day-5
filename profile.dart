import 'package:flutter/material.dart';

myprofiletest() {
  var Design = MaterialApp(
    home: Scaffold(
      body: Center(
          child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: <Widget>[
            Image.network(
              'https://raw.githubusercontent.com/samridhijain/Flutter-Day-4/master/flutterimage.jpg',
              fit: BoxFit.cover,
              width: 250,
              height: 200,
            ),
            Text(
              "line1",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  //textAlign: TextAlign.center,
                  letterSpacing: 1.0),
            ),
            Text(
              "line2",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  //textAlign: TextAlign.center,
                  letterSpacing: 1.0),
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
        //color: Colors.yellowAccent,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20.0),
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
