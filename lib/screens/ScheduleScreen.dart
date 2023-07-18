import 'package:flutter/material.dart';

import 'CanceledScreen.dart';
import 'CompletedScreen.dart';
import 'UpcomingSchedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidget = [
    UpcomingSchedule(),
    CompletedScreen(),
    CanceledScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color(0xfff4f6fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? Color(0xff7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? Color(0xff7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? Color(0xff7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _scheduleWidget[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
