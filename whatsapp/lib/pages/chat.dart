import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Map<String, dynamic>> messages = [
    {"message": 'ازيك', "date": '3.54', "from": true, "seen": true},
    {"message": 'الحمد لله تمام', "date": '2.54', "from": false, "seen": false},
    {"message": 'يدوم', "date": '12.54', "from": true, "seen": false},
    {"message": 'انت اخبارك ايه', "date": '10.54', "from": false, "seen": true},
    {"message": 'كله تمام ؟', "date": '6.54', "from": false, "seen": true},
    {
      "message": 'الحمد لله تمام .',
      "date": '3.54',
      "from": true,
      "seen": false
    },
    {"message": 'ازيك', "date": '3.54', "from": true, "seen": true},
    {"message": 'الحمد لله تمام', "date": '2.54', "from": false, "seen": false},
    {"message": 'يدوم', "date": '12.54', "from": true, "seen": false},
    {"message": 'انت اخبارك ايه', "date": '10.54', "from": false, "seen": true},
    {"message": 'كله تمام ؟', "date": '6.54', "from": false, "seen": true},
    {
      "message": 'الحمد لله تمام .',
      "date": '3.54',
      "from": true,
      "seen": false
    },
  ];

  Widget getMessages(int index) {
    if (messages[index]['from']) {
      return Container(
        width: 200,

        decoration: BoxDecoration(
          color: Color(0xFFDCF8C6),
          borderRadius: BorderRadius.circular(7),
        ),
        margin: EdgeInsets.only(right: 10, left: 100, top: 10, bottom: 10),
        padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              messages[index]['message'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              messages[index]['date'],
              style: TextStyle(color: Colors.black26),
            ),
            SizedBox(
              width: 5,
            ),
            (messages[index]['seen'])
                ? Icon(
                    Icons.done_all,
                    size: 15,
                    color: Colors.blue,
                  )
                : Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.black26,
                  ),
          ],
        ),
      );
    } else {
      return Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        margin: EdgeInsets.only(left: 10, right: 100, top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              messages[index]['message'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              messages[index]['date'],
              style: TextStyle(color: Colors.black26),
            ),
            SizedBox(
              width: 5,
            ),
            (messages[index]['seen'])
                ? Icon(
                    Icons.done_all,
                    size: 15,
                    color: Colors.blue,
                  )
                : Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.black26,
                  ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Color(0xFF075E54),
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              Flexible(
                child: Container(
                  child: ListTile(
                    leading: Container(
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        'images/person1.jpg',
                      )),
                    ),
                    title: Text(
                      'Aly Ahmed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Today, 6.54',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    isThreeLine: true,
                  ),
                ),
              ),
            ],
          ),

          actions: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    child: IconButton(
                        icon: Icon(Icons.videocam), onPressed: () {}),
                  ),
                  Container(
                    width: 35,
                    child:
                        IconButton(icon: Icon(Icons.phone), onPressed: () {}),
                  ),
                  Container(
                    width: 35,
                    child: IconButton(
                        icon: Icon(Icons.more_vert), onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return getMessages(index);
            },
          ),
          Positioned(
            bottom: 10,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Material(
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 0.0),
                    ),
                    hintText: 'Type your message',
                    prefixIcon: IconButton(
                      icon: Icon(Icons.insert_emoticon),
                      onPressed: () {
                        print('emotion');
                      },
                    ),
                    suffixIcon: Icon(Icons.attach_file),
                  ),
                ),
              ),
              trailing: Material(
                color: Color(0xFF075E54),
                borderRadius: BorderRadius.circular(50),
                child: IconButton(
                  icon: Icon(Icons.mic_none),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
