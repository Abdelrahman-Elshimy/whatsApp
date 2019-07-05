import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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
                    title: Text(
                      'Seclect contacts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      '128 Contacts',
                      style: TextStyle(color: Colors.white54, fontSize: 15),
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
                    width: 40,
                    child:
                        IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  ),
                  Container(
                    width: 40,
                    child: IconButton(
                        icon: Icon(Icons.more_vert), onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: IconButton(
                icon: Icon(Icons.people),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
            title: Text(
              'New Group',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: IconButton(
                icon: Icon(Icons.person_add),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
            title: Text(
              'New Contact',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/st1.jpg',
              )),
            ),
            title: Text(
              'Sayed Mohammed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('انا زي الارض تمام'),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/st2.jpg',
              )),
            ),
            title: Text(
              'Shady Nader',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('انا زي الارض تمام'),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/person1.jpg',
              )),
            ),
            title: Text(
              'Mohammed Salah',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('i can do it!!'),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/st2.jpg',
              )),
            ),
            title: Text(
              'ahmed Mohammed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('انا زي الارض تمام'),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/st1.jpg',
              )),
            ),
            title: Text(
              'Osama samy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('انا زي الارض تمام'),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF25D366),
              ),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'images/person2.jpg',
              )),
            ),
            title: Text(
              'Abdelrahman Mohammed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text('انا زي الارض تمام'),
          ),
        ],
      ),
    );
  }
}
