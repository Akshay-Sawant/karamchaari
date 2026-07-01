import 'package:flutter/material.dart';

class SendEmailButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLoading;

  const SendEmailButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton.icon(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2563EB),
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        icon: isLoading
            ? const SizedBox(
          height: 18,
          width: 18,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
          ),
        )
            : const Icon(
          Icons.send_rounded,
          size: 18,
        ),
        label: Text(
          isLoading ? "Sending..." : "Send Report",
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}