import 'package:flutter/material.dart';
import 'package:karamchaari/feature/email/presentation/widgets/attachments.dart';
import 'package:karamchaari/feature/email/presentation/widgets/email_preview_card.dart';
import 'package:karamchaari/feature/email/presentation/widgets/recipient_field.dart';
import 'package:karamchaari/feature/email/presentation/widgets/report_details.dart';
import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

class EmailPreviewPage extends StatelessWidget {
  const EmailPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F7FB),
      body: SafeArea(
        child: Row(
          children: [
            /// Sidebar
            SidebarWidget(
              selectedMenu: "Email Preview",
            ),

            /// Main Content
            Expanded(
              child: Column(
                children: [
                  /// Header
                  HeaderWidget(
                    title: "Email Preview",
                    subtitle:
                    "Review your daily work report before sending it.",
                  ),

                  /// Page Content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Left Section
                          Expanded(
                            flex: 7,
                            child: EmailPreviewCard(),
                          ),

                          SizedBox(width: 24),

                          /// Right Section
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                RecipientField(),

                                SizedBox(height: 20),

                                ReportDetails(),

                                SizedBox(height: 20),

                                Attachments(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}