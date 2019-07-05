import 'package:flutter/material.dart';
import '../pages/contacts.dart';

import '../pages/chat.dart';
class ChatsTab extends StatefulWidget {
  @override
  _ChatsTabState createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  List<Map> chats = [
    {
      'name': 'Abdelrahman Lotfy',
      'date': 'yesterday',
      'lastMessage': 'تمام',
      'image': 'images/person1.jpg',
      'seen': true
    },
    {
      'name': 'Mohammed Ahmed',
      'date': '10 AM',
      'lastMessage': 'هنطلع ع القهوه',
      'image': 'images/person2.jpg',
      'seen': false
    },
  ];

  Widget botBord(int index){
    if(index == chats.length-1) {
      return Padding(padding: EdgeInsets.only(right: 20),);
    }
    else {
      return Padding(
        padding: EdgeInsets.only(right: 20),
        child: Divider(
          indent: MediaQuery.of(context).size.width / 5,
          color: Colors.black26,
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[


    (chats.length > 0) ?
        ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: <Widget>[
                  ListTile(

                    leading: Container(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        chats[index]['image'],
                      )),
                    ),
                    title: Text(chats[index]['name']),
                    subtitle: Row(
                      children: <Widget>[
                        (chats[index]['seen'])
                            ? Icon(
                                Icons.done_all,
                                color: Colors.blue,
                              )
                            : Icon(Icons.done_all),
                        Text(chats[index]['lastMessage']),
                      ],
                    ),
                    trailing: Text(chats[index]['date']),

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ChatPage();
                          }
                      )
                      );
                    },
                  ),

                  botBord(index),
                ],
              ),
            );
          },
          itemCount: chats.length,
        ) :
        Center(
          child: Text('No Chats yet', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),
        ),

        Positioned(
          right: 10,
          bottom: 10,
          child: Material(
              color: Color(0xFF25D366),
              elevation: 2,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 55,
                height: 55,
                child: IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ContactsPage();
                    }));
                  },
                  color: Colors.white,
                ),
              )),
        ),
      ],
    );
  }
}
