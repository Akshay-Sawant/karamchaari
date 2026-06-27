import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/logo/logo.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 3),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text("Karamchaari", style:
                  TextStyle( fontSize:18 ,
                   fontWeight: FontWeight.bold,
                   color:Colors.black
                  ),
                  ),
                  Text("Work,Track,Report",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight(13)
                    ),),
                ],

              ),
            ],
          ),



          const Column(
            children: [
              Row(
                children: [
                  Icon(Icons.dashboard_outlined),
                  SizedBox(width: 18),
                  Text("Dashboard", style:
                    TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),)
                ],
              ),

               SizedBox(height: 30,),

              Row(
                children: [
                  Icon(Icons.calendar_month_outlined),
                  SizedBox(width: 18,),
                  Text("Attendance", style:
                  TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 30,),

              Row(
                children: [
                  Icon(Icons.edit_note_outlined),
                  SizedBox(width: 18,),
                  Text("Daily Work Update",style:
                  TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 30,),


              Row(
                children: [
                  Icon(Icons.email_outlined),
                  SizedBox(width: 18,),
                  Text("Email Preview",style:
                  TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 30,),

              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 18,),
                  Text("Settings",
                    style:
                  TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.bold
                  ),
                  ),
                ],

              ),
           ],
          ),
              const Spacer(),
              const Divider(),

              const SizedBox(height: 15),

              const Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.white),
                  ),

                  SizedBox(width: 12),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Akshay",  style: TextStyle(fontSize: 16, color: Colors.grey)),

                      Text("Administrator", style: TextStyle(fontSize: 12, color: Colors.grey)),

                    ],
                  )


                ],


          )


        ],




      ),

    );
  }
}
