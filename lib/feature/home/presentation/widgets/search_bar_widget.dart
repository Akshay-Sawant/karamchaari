import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Anything...",
            prefixIcon: Icon(Icons.search),
          ),
        ),
      );
  }
}
