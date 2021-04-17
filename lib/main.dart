import 'package:flutter/material.dart';
import 'package:vivenu_code_test/theme/theme.dart';
import 'package:vivenu_code_test/views/events/events_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(context),
      home: EventsView(),
    );
  }
}
