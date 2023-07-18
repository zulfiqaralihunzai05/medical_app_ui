import 'package:flutter/material.dart';

import 'ChatSample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff7165d6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 14, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
          padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
          itemBuilder: (context, index) =>
              ChatSample()),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 10
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.add,
              size: 30,
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type Something",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.send,
              size: 25,
              color: Color(0xff7165d6),),
            )
          ],
        ),
      ),
    );
  }
}
