import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override

  int r = 255;
  int g = 255;
  int b = 255;

  void changeToRed(){
    setState(() {
      r = 255;
      g = 0;
      b = 0;
    });
  }
  void changeToGreen(){
    setState(() {
      r = 0;
      g = 255;
      b = 0;
    });
  }
  void changeToBlue(){
    setState(() {
      r = 0;
      g = 0;
      b = 255;
    });
  }


  Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "RGB"
                    ),
                  ),
                  body: Container(
                    padding: EdgeInsets.only(
                      top: 100,
                      left: 110,
                      right: 110,
                    ),
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 60,
                          //width: 500,
                          alignment: Alignment.centerLeft,
                          child: SizedBox.expand(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: changeToRed,
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  splashColor: Colors.black38,
                                  child: Text(
                                    "Red"
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: changeToGreen,
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  splashColor: Colors.black38,
                                  child: Text(
                                    "Green"
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: changeToBlue,
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  splashColor: Colors.black38,
                                  child: Text(
                                    "Blue"
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Color.fromRGBO(r, g, b, 1.0),
            )
          ],
        ),
      ),
    );
  }
}