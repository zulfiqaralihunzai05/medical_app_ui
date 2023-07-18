import 'package:flutter/material.dart';

import 'ChatScreen.dart';

class MessageScreen extends StatelessWidget {
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor1.jpg",
    "doctor2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 10, spreadRadius: 2),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xff7165d6),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Active Now",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(3),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent Chat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatScreen()));
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/${imgs[index]}",
                    ),
                  ),
                  title: Text(
                    "Dr Doctor Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    "Hello, Doctor are you there?  ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: Text(
                    "12:30",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54
                    ),
                  ),
                ),
              );
              }),
        ],
      ),
    );
  }
}
