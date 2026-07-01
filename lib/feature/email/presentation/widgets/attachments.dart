import 'package:flutter/material.dart';

class Attachments extends StatelessWidget {
  const Attachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          const Row(
            children: [
              Icon(
                Icons.attach_file,
                color: Colors.orange,
                size: 24,
              ),
              SizedBox(width: 10),
              Text(
                "Attachments",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _attachmentTile(
            icon: Icons.picture_as_pdf,
            iconColor: Colors.red,
            title: "Daily_Work_Report.pdf",
            subtitle: "PDF • 245 KB",
          ),

          const Divider(),

          _attachmentTile(
            icon: Icons.image_outlined,
            iconColor: Colors.green,
            title: "Project_Screenshot.png",
            subtitle: "PNG • 1.2 MB",
          ),

          const Divider(),

          _attachmentTile(
            icon: Icons.description_outlined,
            iconColor: Colors.blue,
            title: "Task_Details.docx",
            subtitle: "Word • 180 KB",
          ),
        ],
      ),
    );
  }

  Widget _attachmentTile({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: iconColor.withValues(alpha: 0.1),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: IconButton(
        onPressed: () {
          // Download/View action
        },
        icon: const Icon(Icons.download_outlined),
      ),
    );
  }
}