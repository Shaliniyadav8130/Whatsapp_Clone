import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_page.dart';
import 'package:whatsapp_clone/screens/status_page.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.groups)),
    Tab(text: 'Chats'),
    Tab(text: 'Status'),
    Tab(text: 'Calls'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text('WhatsApp'),
        actions: [
          IconButton(
              icon: Icon(Icons.photo_camera_outlined),
              onPressed: () {
                print('Search Button Clicked');
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search Button Clicked');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('Three Dot Button Clicked');
              })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Groups'),
          ChatPage(),
          StatusPage(),
          Text("Calls"),
        ],
      ),
    );
  }
}

