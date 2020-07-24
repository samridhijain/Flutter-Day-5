import 'package:flutter/material.dart';

mysecond_app2() {
  ////////////////////Text-----Text//////////////////////////////
  var Text1 = Text(
    'WELCOME',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.right,
    style: TextStyle(
        fontSize: 25.0,
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
        //textAlign: TextAlign.center,
        letterSpacing: 1.0),
  );
////////////////////////////////////////////////////////////////

/////////////////////--Icon---IconButton////////////////////////
  alarmpress() {
    print("alarm icon clicked....");
  }

  emailpress() {
    print("email icon clicked....");
  }

  var AlarmIcon = Icon(
    Icons.alarm_on,
    color: Colors.amber.shade300,
  );

  var EmailIcon = Icon(Icons.email);

  var AlarmIconButton = IconButton(icon: AlarmIcon, onPressed: alarmpress);

  var EmailIconButton = IconButton(icon: EmailIcon, onPressed: emailpress);
//////////////////////////////////////////////////////////////////////////

////////////////AppBar---AppBar//////////////////////////////////////////
  var MyAppBar = AppBar(
    title: Text1,
    backgroundColor: Colors.cyan,
    leading: AlarmIcon,
    actions: <Widget>[
      AlarmIconButton,
      EmailIconButton,
    ],
  );
/////////////////////////////////////////////////////////////////////////////

/////////////////BoxDecoration-----BoxDecoration///////////////////////////////
  var MyBoxDecoration = BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(
        width: 5,
        color: Colors.indigo,
      ));
//////////////////////////////////////////////////////////////////////////////

/////////////////////Column-----Column//////////////////////////////////////
  var MyColumn = Column(
    children: <Widget>[
      Image.network(
        'https://raw.githubusercontent.com/samridhijain/Flutter-Day-4/master/flutterimage.jpg',
        fit: BoxFit.cover,
        width: 250,
        height: 200,
      ),
      Text1,
      Text1,
    ],
  );
//////////////////////////////////////////////////////////////////////////////

////////////////////Container-------Container/////////////////////////////////
  var MyContainer = Container(
    width: 300,
    height: 300,
    child: MyColumn,
    alignment: Alignment.bottomCenter,
    //color: Colors.yellowAccent,
    decoration: MyBoxDecoration,
  );
///////////////////////////////////////////////////////////////////////////////

//////////////////////////Scaffold------Scaffold//////////////////////////////
  var MyHome = Scaffold(
    appBar: MyAppBar,
    body: Center(child: MyContainer),
    backgroundColor: Colors.black38,
  );
//////////////////////////////////////////////////////////////////////////////

////////////////////////////MaterialApp----MaterailApp//////////////////////
  var Design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
  );
//////////////////////////////////////////////////////////////////////////////

  return Design;
}
