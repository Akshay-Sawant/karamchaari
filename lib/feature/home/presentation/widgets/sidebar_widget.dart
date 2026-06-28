import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/menu_item_widget.dart';

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



          Column(
            children: [
              MenuItemWidget(
                  icon: Icons.dashboard_outlined,
                  title: "Dashboard",
                  isSelected: true,
                  onTap: () {
                    print("Dashboard");
                  },
              ),

               const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.calendar_month_outlined,
                title: "Attendance",
                isSelected: false,
                onTap: () {
                  print("Attendance");
                },
              ),


              const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.edit_note_outlined,
                title: "Daily Work Update",
                isSelected: false,
                onTap: () {
                  print("Daily Work Update");
                },
              ),

              const SizedBox(height: 30,),


              MenuItemWidget(
                icon: Icons.email_outlined,
                title: "Email Preview",
                isSelected: false,
                onTap: () {
                  print("Email preview");
                },
              ),

              const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.settings,
                title: "Settings",
                isSelected:false,
                onTap: () {
                  print("Settings");
                },
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
