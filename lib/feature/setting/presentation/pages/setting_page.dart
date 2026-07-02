import 'package:flutter/material.dart';
import 'package:karamchaari/feature/home/presentation/widgets/header_widget.dart';
import 'package:karamchaari/feature/home/presentation/widgets/sidebar_widget.dart';

import '../widgets/setting_card.dart';
import 'hr_email_screen.dart';
import 'reporting_manager_screen.dart';
import 'reporting_hr_screen.dart';
import 'employee_information_screen.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int selectedIndex = 0;

  /// Returns the page title
  String getTitle() {
    switch (selectedIndex) {
      case 0:
        return "HR Email IDs";

      case 1:
        return "Reporting Managers";

      case 2:
        return "Reporting HR";

      case 3:
        return "Employee Information";

      default:
        return "Settings";
    }
  }

  /// Returns breadcrumb list
  List<String> getBreadcrumbs() {
    return [
      "Dashboard",
      "Settings",
      getTitle(),
    ];
  }

  /// Returns selected screen
  Widget getSelectedScreen() {
    switch (selectedIndex) {
      case 0:
        return const HrEmailScreen();

      case 1:
        return const ReportingManagerScreen();

      case 2:
        return const ReportingHrScreen();

      case 3:
        return const EmployeeInformationScreen();

      default:
        return const HrEmailScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: Row(
        children: [
          /// Sidebar
          const SidebarWidget(
            selectedMenu: "Settings",
          ),

          /// Right Side
          Expanded(
            child: Column(
              children: [
                /// Header
                HeaderWidget(
                  title: getTitle(),
                  subtitle: "",
                  breadcrumbs: getBreadcrumbs(),
                ),

                /// Body
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Settings Menu
                        SizedBox(
                          width: 320,
                          child: SettingCard(
                            selectedIndex: selectedIndex,
                            onChanged: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 20),

                        /// Selected Screen
                        Expanded(
                          child: getSelectedScreen(),
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
    );
  }
}