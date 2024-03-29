import 'package:flutter/material.dart';
import 'package:petshop_app/config/pref.dart';
import 'package:petshop_app/view/Welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Pref.loadTheme();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
            labelColor: Color.fromRGBO(243, 98, 105, 1),
            // labelStyle: TextStyle(color: Colors.red[800]),
            // labelColor: Color.fromRGBO(243, 98, 105, 1),
            indicator: UnderlineTabIndicator( // color for indicator (underline)
                borderSide: BorderSide(color: Color.fromRGBO(243, 98, 105, 1)))),
          // primaryColor: Colors.blue[800], // outdated and has no effect to Tabbar
          // accentColor: Colors.blue[600] // deprecated,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Welcome(),
    );
  }
}
// primaryColor: Color.fromRGBO(243, 98, 105, 1)
