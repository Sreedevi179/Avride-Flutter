//page-1
// ignore_for_file: use_key_in_widget_constructors

import 'package:ava/service/application_loc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Components/BottomNavigation.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=> ApplicationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor: Colors.black,
        ) ,
        home:MyHomePage(),
      ),
    );

  }
}
