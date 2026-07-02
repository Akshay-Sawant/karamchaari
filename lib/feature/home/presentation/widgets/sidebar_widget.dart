import 'package:flutter/material.dart';
import 'package:karamchaari/feature/attendance/presentation/pages/attendance_page.dart';
import 'package:karamchaari/feature/daily_update/presentation/pages/daily_update_page.dart';
import 'package:karamchaari/feature/email/presentation/pages/email_preview_page.dart';
import 'package:karamchaari/feature/home/presentation/widgets/menu_item_widget.dart';
import 'package:karamchaari/feature/setting/presentation/pages/setting_page.dart';

class SidebarWidget extends StatelessWidget {
  final String selectedMenu;

  const SidebarWidget({super.key,
  required this.selectedMenu,
  });


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
                  isSelected: selectedMenu=="Dashboard",
                onTap: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),

               const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.calendar_month_outlined,
                title: "Attendance",
                isSelected: selectedMenu=="Attendance",
                onTap: () {
                  if (selectedMenu != "Attendance") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AttendancePage(),
                      ),
                    );
                  }
                }
              ),


              const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.edit_note_outlined,
                title: "Daily Work Update",
                isSelected: selectedMenu=="Daily Work Update",
                  onTap: () {
                    if (selectedMenu != "Daily Work Update") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DailyUpdatePage(),
                        ),
                      );
                    }
                  }
              ),

              const SizedBox(height: 30,),


              MenuItemWidget(
                icon: Icons.email_outlined,
                title: "Email Preview",
                isSelected: selectedMenu=="Email Preview",
                  onTap: () {
                    if (selectedMenu != "Email Preview") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const EmailPreviewPage(),
                        ),
                      );
                    }
                  }
              ),

              const SizedBox(height: 30,),

              MenuItemWidget(
                icon: Icons.settings,
                title: "Settings",
                isSelected: selectedMenu=="Settings",
                  onTap: () {
                    if (selectedMenu != "Settings") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SettingPage(),
                        ),
                      );
                    }
                  }
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
