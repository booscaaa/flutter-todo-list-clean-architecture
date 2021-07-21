import 'package:todolist/module/view/home_page.dart';
import 'package:todolist/core/global.dart';
import 'package:flutter/material.dart';
import 'package:todolist/di/di.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: globalKey,
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}