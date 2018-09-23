import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
/*  OR
void main() {
  runApp(new myApp());
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // true is for slow mode (banner) #debug build
      home: new whatsappclone()
    );
  }
}

class whatsappclone extends StatefulWidget {
  @override
  _whatsappcloneState createState() => _whatsappcloneState();
}

class _whatsappcloneState extends State<whatsappclone> with SingleTickerProviderStateMixin{
  TabController whatsappController;

@override
void initState()
{
  whatsappController =TabController(initialIndex: 1, length: 4, vsync: this);  //vsync and ticker for animation
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        backgroundColor: Color(0xff075E54),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: whatsappController,
          tabs: <Widget>[Tab(icon: Icon(Icons.camera_alt),), Tab(text: 'Status'), Tab(text: 'Chats'), Tab(text: 'Calls')])
    ),
      body: TabBarView(
        controller: whatsappController,
        children: [
          Center(child: Text('CAMERA')),
          Center(child: Text('CHATS')),
          Center(child: Text('STATUS')),
          Center(child: Text('CALLS')),


        ])

    );
  }
}




