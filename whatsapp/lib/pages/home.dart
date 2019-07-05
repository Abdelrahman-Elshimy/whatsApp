import 'package:flutter/material.dart';
import '../components/chatstab.dart';
import '../components/statustab.dart';
import '../components/callstab.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(child: Text('WhatsApp')),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.search), onPressed: () {

                  }),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                    print('sdfsdf');

                  }),
                ],
              ))
            ],
          ),
          bottom: TabBar(
            tabs: [
              Text('CHATS'),
              Text('STATUS'),
              Text('CALLS'),
            ],
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.only(bottom: 10),
          ),
          backgroundColor: Color(0xFF075E54),
        ),
        body: TabBarView(children: [

          // chats tab component
          ChatsTab(),

          // status tab component
          StatusTab(),

          // calls tab component
          CallsTab(),

        ]),
      ),
    );
  }
}
