import 'package:flutter/material.dart';

class KeepReportsWidget extends StatelessWidget {
  const KeepReportsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
     child: Row(
       children: [
         Expanded(child: Column(
           children: [
             Container(
               width: 60,
               height: 60,
               decoration: BoxDecoration(
                 color: Colors.blue.withValues(alpha: 0.12),
                 borderRadius: BorderRadius.circular(16),
               ),
               child: const Icon(Icons.shield_outlined,
               color: Colors.blue,
               size: 26,),
             ),

             const SizedBox(height: 20),

             const Text("Keep your report consistent",
             style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

             const SizedBox(height: 10),

             const Text("Submit your daily updates and reports on time to "
                 "keep your workflow smooth and transparent.",
               style: TextStyle( color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),

             const SizedBox(height: 22),
             SizedBox(
               height: 46,
               child: ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                     foregroundColor: Colors.white,
                     elevation: 0,
                     padding: const EdgeInsetsGeometry.symmetric(horizontal: 28),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     )
                   ),
                   child: const Text("Create Daily update",
                   style: TextStyle(
                     fontWeight: FontWeight.w600
                   ),
                   ),
               ),
             )

           ],
         ))
       ],
     ),


    );
  }
}
