import 'package:flutter/material.dart';
import 'package:flutter_slidable/home.dart';
import 'package:flutter_slidable/profile.dart';
import 'package:flutter_slidable/setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "tab bar",
            style: TextStyle(letterSpacing: 10, fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.pink,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.pink,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
              )
            ]),
            Expanded(
                child: TabBarView(children: [Setting(), Profile(), Home()]))
          ],
        ),
      ),
    );
  }
}
