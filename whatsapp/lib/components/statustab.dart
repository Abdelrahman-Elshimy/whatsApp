import 'package:flutter/material.dart';

class StatusTab extends StatefulWidget {
  @override
  _StatusTabState createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  List<Map> status = [
    {
      'name': 'Abdelrahman Lotfy',
      'date': 'yesterday',
      'image': 'images/person1.jpg',
      'seen': true
    },
    {
      'name': 'Mohammed Ahmed',
      'date': 'هنطلع ع القهوه',
      'image': 'images/person2.jpg',
      'seen': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        (status.length > 0) ?
        ListView(
          children: <Widget>[
            Material(
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                leading: Container(
                    height: 45,
                    width: 45,
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                            backgroundImage: AssetImage(
                          'images/person1.jpg',
                        )),
                        Positioned(
                          bottom: 7,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: Text(
                              '+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        )
                      ],
                    )),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tap to add status update'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                'Recent Updates',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
            ),

            // recent updates
            Material(
              color: Colors.white,
              elevation: 1,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        'images/person1.jpg',
                      )),
                    ),
                    title: Text('Abdelrahman Lotfy'),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Yesterday, 22.65'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Divider(
                      indent: MediaQuery.of(context).size.width / 5,
                      color: Colors.black26,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        'images/person2.jpg',
                      )),
                    ),
                    title: Text('Mohamed Ahmed'),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Yesterday, 22.65'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                'Viewed Updates',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
            ),
            Material(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        'images/st1.jpg',
                      )),
                    ),
                    title: Text('Sayed Ahmed'),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Yesterday, 22.65'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Divider(
                      indent: MediaQuery.of(context).size.width / 5,
                      color: Colors.black26,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        'images/st2.jpg',
                      )),
                    ),
                    title: Text('Gaber Samy'),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Today, 22.65'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ) :  Center(
        child: Text('No Chats yet', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),
    ),
        Positioned(
            right: 10,
            bottom: 10,
            child: Column(
              children: <Widget>[
                Material(
                    color: Color(0xFFEEEEEE),
                    elevation: 2,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 45,
                      height: 45,
                      child: IconButton(
                        icon: Icon(Icons.mode_edit),
                        onPressed: () {},
                        color: Colors.blueGrey,
                      ),
                    )),
                Padding(padding: EdgeInsets.all(8)),
                Material(
                    color: Color(0xFF25D366),
                    elevation: 1,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 55,
                      height: 55,
                      child: IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () {
                          print('status');
                        },
                        color: Colors.white,
                      ),
                    )),
              ],
            )),
      ],
    );
  }
}
