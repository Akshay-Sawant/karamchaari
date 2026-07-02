import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const EditButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () {},
      icon: const Icon(
        Icons.edit_outlined,
        color: Colors.blue,
      ),
      tooltip: "Edit",
    );
  }
}