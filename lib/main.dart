import 'package:flutter/material.dart';
import 'package:myapp/pages/form_page.dart';
import 'package:myapp/pages/info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FormPage(),
      routes: {
        'form' : ( _ ) => FormPage(),
        'info' : ( _ ) => InfoPage()
      },
    );
  }
}

