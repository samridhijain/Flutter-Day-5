import 'package:flutter/material.dart';

mysecond_app1() {
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
      ));
//////////////////////////////////////////////////////////////////////////////

////////////////////Container-------Container/////////////////////////////////
  var MyContainer = Container(
    width: 300,
    height: 300,
    child: Text(
      "Hello Samridhi",
    ),
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
