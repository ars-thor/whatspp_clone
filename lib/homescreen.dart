import 'package:flutter/material.dart';
import 'package:whatspp_clone/screens/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        super.initState();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          ),
        ],
        //backgroundColor: whatsAppGreen,
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       snap: false,
      //       pinned: false,
      //       floating: false,
      //       flexibleSpace: const FlexibleSpaceBar(
      //         centerTitle: true,
      //         title: Text(
      //           "WhatsApp Clone",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 16.0,
      //           ),
      //           textDirection: TextDirection.ltr,
      //         ),
      //       ), //FlexibleSpaceBar
      //       expandedHeight: 100,
      //       backgroundColor: Colors.green,
      //       actions: [
      //         IconButton(
      //           onPressed: () {},
      //           icon: const Icon(Icons.search),
      //           iconSize: 30,
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: const Icon(Icons.more_vert),
      //           iconSize: 30,
      //         ),
      //       ],
      // bottom: TabBar(
      //   tabs: topTabs,
      //   controller: _tabController,
      //   indicatorColor: Colors.white,
      // ),
      //     ),
      //   ],
      // ),

      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Call')
        ],
      ),
    );
  }
}
