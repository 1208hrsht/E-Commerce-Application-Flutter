import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://icon-library.com/images/default-profile-icon/default-profile-icon-24.jpg";
    return  Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:const BoxDecoration(
                  color: Colors.deepPurple
                ),
                accountName: const Text("Harshit Singh", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), 
                accountEmail: const Text("1208hrsht@gmail.com", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl), ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              )),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
              title: Text("Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              )),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,),
              title: Text("Mails",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }

}