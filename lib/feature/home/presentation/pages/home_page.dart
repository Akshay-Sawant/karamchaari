import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
               fit:BoxFit.cover,
          ),
        ),

        
        child:const  Row(
          children: [
            SidebarWidget(),

           Column(
             children: [
               HeaderWidget(),
             ],

            ),



            /*Expanded
            (
            child: Container
            (
              child: Container(
                color: Colors.transparent,
                child: const Center(
                  child: Text("home page"),
                ),
              ),

            )
            )*/
          ],
        ),
      ),
    );
  }
}
