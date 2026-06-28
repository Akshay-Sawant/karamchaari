import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const MenuItemWidget({super.key,
  required this.icon,
  required this.title,
  required this.onTap,
    this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12,),

        decoration: BoxDecoration(color:isSelected ? Colors.blue: Colors.transparent,
        borderRadius: BorderRadius.circular(10)),

        child: Row(
          children: [

            Icon(
              icon,color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 18,),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
