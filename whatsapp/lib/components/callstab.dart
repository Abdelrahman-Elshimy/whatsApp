import 'package:flutter/material.dart';

class CallsTab extends StatefulWidget {
  @override
  _CallsTabState createState() => _CallsTabState();
}

class _CallsTabState extends State<CallsTab> {
  List<Map> calls = [
    {
      'name': 'Abdelrahman Lotfy',
      'date': 'yesterday',
      'image': 'images/person1.jpg',
      'come': true,
      'phone': false
    },
    {
      'name': 'Mohammed Ahmed',
      'date': '10 AM',
      'image': 'images/person2.jpg',
      'come': false,
      'phone': true
    },
  ];

  Widget botBord(int index) {
    if (index == calls.length - 1) {
      return Padding(
        padding: EdgeInsets.only(right: 20),
      );
    } else {
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

        ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                            backgroundImage: AssetImage(
                          calls[index]['image'],
                        )),
                      ),
                      title: Text(calls[index]['name']),
                      subtitle: Row(
                        children: <Widget>[
                          (calls[index]['come'])
                              ? Icon(
                                  Icons.call_received,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.call_made,
                                  color: Colors.green,
                                ),
                          Text(calls[index]['date']),
                        ],
                      ),
                      trailing: (calls[index]['phone'])
                          ? Icon(Icons.phone, color: Color(0xFF075E54),)
                          : Icon(Icons.videocam, color: Color(0xFF075E54),),
                    ),
                  ],
                ),
              );
            }),
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
                  icon: Icon(Icons.phone_forwarded),
                  onPressed: () {
                    print('call');
                  },
                  color: Colors.white,
                ),
              )),
        ),
      ],
    );
  }
}
