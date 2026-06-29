import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/quick_action_card.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: const Column(
        children: [
          Text("Quick Actions",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20,),

          Expanded(child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              QuickActionCard(
                  icon: Icons.fact_check,
                  title: "Mark/Attendance",
                  iconColor: Colors.green,
                  backgroundColor: Color(0xFFF2ECFF),
              ),

              QuickActionCard(
                icon: Icons.edit_note,
                title: "Add Work update",
                iconColor: Colors.deepPurple,
                backgroundColor: Color(0xFFF2ECFF),
              ),


              QuickActionCard(
                icon: Icons.email_outlined,
                title: "Preview\nEmail",
                iconColor: Colors.blue,
                backgroundColor: Color(0xFFE8F3FF),
              ),


              QuickActionCard(
                icon: Icons.send,
                title: "Send\nReport",
                iconColor: Colors.orange,
                backgroundColor: Color(0xFFFFF4E6),
              ),


              QuickActionCard(
                icon: Icons.settings,
                title: "Go to\n Setting",
                iconColor: Colors.grey,
                backgroundColor: Color(0xFFF3F4F6),
              ),




            ],
          ))
        ],
      ),

    );
  }
}
