import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onChanged;

  const SettingCard({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final List<_SettingMenu> menus = [
      const _SettingMenu(
        title: "HR Email IDs",
        subtitle: "Manage HR email addresses",
        icon: Icons.email_outlined,
      ),
      const _SettingMenu(
        title: "Reporting Managers",
        subtitle: "Manage reporting managers",
        icon: Icons.people_outline,
      ),
      const _SettingMenu(
        title: "Reporting HR",
        subtitle: "Manage reporting HR",
        icon: Icons.supervisor_account_outlined,
      ),
      const _SettingMenu(
        title: "Project Names",
        subtitle: "Manage project names",
        icon: Icons.folder_outlined,
      ),
      const _SettingMenu(
        title: "Employee Information",
        subtitle: "Manage employee details",
        icon: Icons.badge_outlined,
      ),
    ];

    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Settings",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              itemCount: menus.length,
              itemBuilder: (context, index) {
                final menu = menus[index];
                final bool selected = selectedIndex == index;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () => onChanged(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: selected
                            ? const Color(0xffEEF4FF)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: selected
                              ? const Color(0xff2563EB)
                              : Colors.grey.shade300,
                          width: selected ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            menu.icon,
                            color: selected
                                ? const Color(0xff2563EB)
                                : Colors.grey,
                            size: 28,
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menu.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: selected
                                        ? const Color(0xff2563EB)
                                        : Colors.black87,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  menu.subtitle,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xffF8FAFC),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xffEEF4FF),
                      child: Icon(
                        Icons.help_outline,
                        color: Color(0xff2563EB),
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Need Help?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Text(
                  "Manage all your organization settings and preferences.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xff2563EB),
                      side: const BorderSide(
                        color: Color(0xff2563EB),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "View Documentation",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
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

class _SettingMenu {
  final String title;
  final String subtitle;
  final IconData icon;

  const _SettingMenu({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}