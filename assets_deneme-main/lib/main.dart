import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'my flutter app',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}
