import 'package:flutter/material.dart';
import 'package:whatsappui/Calls.dart';
import 'package:whatsappui/Chat.dart';
import 'package:whatsappui/Status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabController=TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: ()
          {

          }, icon:Icon(Icons.photo_camera,color: Colors.white,)),
          IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white,
          )),
          IconButton(onPressed: null, icon: Icon(Icons.more_vert,color: Colors.white,)),
          
        ],
        bottom: TabBar(
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: 
        [
          Text("Chats"),
          Text("Status"),
          Text("Calls")
        ]),
      ),
      body: TabBarView(
        
        controller: _tabController,
        children: [
        Chats(),
        Status(),
        Calls(),

      ]
      ),
    );
  }
}