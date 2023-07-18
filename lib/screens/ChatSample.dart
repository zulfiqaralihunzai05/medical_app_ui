import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
       child: ClipPath(
         clipper: UpperNipMessageClipper(MessageType.RECEIVE),
         child: Container(
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
             color: Color(0xffe1e1e2),

           ),
           child: Text(
             "Hello, what i can do for you can book appointment directly",
             style: TextStyle(
               fontSize: 15,
             ),
           ),
         ),
       ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.SEND),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Color(0xff7165d6),

                ),
                child: Text(
                  "Hello Doctor are you there?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),
                ),

              ),
            ),
          ),
        )
      ],
    );
  }
}
