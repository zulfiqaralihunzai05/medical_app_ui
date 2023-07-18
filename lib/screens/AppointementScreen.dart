import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7165d6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "assets/images/doctor1.jpg",
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Dr.Doctor Name",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Therapist",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xff9f97e2),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xff9f97e2),
                                  shape: BoxShape.circle),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "About Doctor",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " (124)",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff9f97e2)),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(0xff9f97e2)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2)
                                ]),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                        "assets/images/${imgs[index]}",
                                      ),
                                    ),
                                    title: Text(
                                      "Dr. Doctor Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("1 day ago"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "4.9",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      'Many Tanks  to Dr. Dear. He is great and professional doctor.',
                                      textAlign: TextAlign.justify,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Color(0xfff0eefa),
                      shape: BoxShape.circle),
                      child:  Icon(
                        Icons.location_on,
                        color: Color(0xff7165d6),
                        size: 10,
                      ),
                    ),
                    title: Text(
                      "New York. Medical Center",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),
                    ),
                    subtitle: Text("address line of the medical center",
                    style: TextStyle(
                      fontSize: 10
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 135,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation Price",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff7165d6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
