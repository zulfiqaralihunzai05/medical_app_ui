import 'package:flutter/material.dart';

class CanceledScreen extends StatelessWidget {
  const CanceledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Therapist",
                    ),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),

                          Text(
                            "12/12/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle
                            ),

                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Canceled",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Therapist",
                    ),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),

                          Text(
                            "12/12/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle
                            ),

                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Canceled",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Therapist",
                    ),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),

                          Text(
                            "12/12/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle
                            ),

                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Canceled",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Therapist",
                    ),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),

                          Text(
                            "12/12/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle
                            ),

                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Canceled",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Therapist",
                    ),
                    trailing: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),

                          Text(
                            "12/12/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                            size: 18,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "10:30 AM",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle
                            ),

                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Canceled",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
