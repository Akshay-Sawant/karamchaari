import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white
      ),

      child:const Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Text("Good morning,Akshay!",
                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 18),

                  Text("Here's what's happening with your work today.",
                    style: TextStyle(color: Colors.grey,
                    fontSize: 15,
                    ),
                  ),
                ],
              )
          )
        ],
      ),



    );
  }
}
