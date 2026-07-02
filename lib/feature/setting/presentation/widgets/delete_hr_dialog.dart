import 'package:flutter/material.dart';

class DeleteHrDialog extends StatelessWidget {
  final VoidCallback onDelete;

  const DeleteHrDialog({
    super.key,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      title: const Row(
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: Colors.red,
          ),
          SizedBox(width: 10),
          Text("Delete HR"),
        ],
      ),

      content: const Text(
        "Are you sure you want to delete this HR Email?",
      ),

      actions: [

        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            onDelete();
            Navigator.pop(context);
          },
          child: const Text(
            "Delete",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

