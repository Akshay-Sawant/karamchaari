import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Akshay",  style: TextStyle(fontSize: 16, color: Colors.black)),

        Text("Administrator", style: TextStyle(fontSize: 12, color: Colors.grey)),

      ],
    )
    ;
  }
}
