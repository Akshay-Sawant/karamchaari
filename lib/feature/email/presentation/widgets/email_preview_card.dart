import 'package:flutter/material.dart';
import 'package:karamchaari/feature/email/presentation/widgets/email_action_button.dart';
import 'package:karamchaari/feature/email/presentation/widgets/email_information_banner.dart';
import 'package:karamchaari/feature/email/presentation/widgets/subject_field.dart';
import 'package:karamchaari/feature/email/presentation/widgets/email_preview_widget.dart';


class EmailPreviewCard extends StatelessWidget {
  const EmailPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailInformationBanner(),
          SizedBox(height: 24),

          SubjectField(),
          SizedBox(height: 24),

          EmailPreviewWidget(),
          SizedBox(height: 24),

          EmailActionButtons(),
        ],
      ),
    );
  }
}