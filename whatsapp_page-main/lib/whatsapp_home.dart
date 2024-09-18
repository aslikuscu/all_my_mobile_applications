import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/call_screen.dart';
import 'package:flutter_application_2/pages/camera_screen.dart';
import 'package:flutter_application_2/pages/chat_screen.dart';
import 'package:flutter_application_2/pages/status_screen.dart';

class whatsAppHome extends StatefulWidget {
  const whatsAppHome({super.key});

  @override
  State<whatsAppHome> createState() => _whatsAppHomeState();
}

class _whatsAppHomeState extends State<whatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("whatsapp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Chat"),
            new Tab(text: "Status"),
            new Tab(text: "Calls"),
          ],
        ),
        actions: [
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.green,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chat"),
      ),
    );
  }
}
