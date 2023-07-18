import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Setting",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/images/doctor1.jpg",
                ),
              ),
              title: Text(
                "Dr. Doctor Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Profile"),
            ),
            Divider(height: 50),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 25,
                ),
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.deepPurple,
                  size: 25,
                ),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_rounded
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 25,
                ),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                ),
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_rounded
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              title: Text(
                "General",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_rounded
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.orange,
                  size: 25,
                ),
              ),
              title: Text(
                "About Us",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_rounded
              ),
            ),
            SizedBox(height: 15,),

            Divider(height: 25),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                  size: 25,
                ),
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),
              ),
              trailing: Icon(
                  Icons.arrow_forward_ios_rounded
              ),
            ),
          ],
        ),
      ),
    );
  }
}
