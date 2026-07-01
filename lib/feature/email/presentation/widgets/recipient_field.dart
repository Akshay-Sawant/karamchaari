import 'package:flutter/material.dart';

class RecipientField extends StatelessWidget {
  const RecipientField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
                Icons.groups_outlined,
                color: Colors.blue,
                size: 24,
              ),
              SizedBox(width: 10),
              Text(
                "Recipients",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          /// Reporting Manager
          const Text(
            "Reporting Manager",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 12),

          const _RecipientTile(
            initials: "RM",
            avatarColor: Color(0xff4F8EF7),
            name: "Rohit Mehta",
            email: "rohit.mehta@aspire.com",
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Divider(height: 1),
          ),

          /// HR Recipient
          const Text(
            "HR Recipient",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 12),

          const _RecipientTile(
            initials: "PS",
            avatarColor: Color(0xffB26DFF),
            name: "Priya Sharma",
            email: "priya.sharma@aspire.com",
          ),
        ],
      ),
    );
  }
}

class _RecipientTile extends StatelessWidget {
  final String initials;
  final String name;
  final String email;
  final Color avatarColor;

  const _RecipientTile({
    required this.initials,
    required this.name,
    required this.email,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Avatar
        CircleAvatar(
          radius: 22,
          backgroundColor: avatarColor.withValues(alpha: 0.15),
          child: Text(
            initials,
            style: TextStyle(
              color: avatarColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(width: 14),

        /// Name & Email
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                email,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}