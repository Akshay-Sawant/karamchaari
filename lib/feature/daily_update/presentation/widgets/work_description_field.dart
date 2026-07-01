import 'package:flutter/material.dart';

class WorkDescriptionField extends StatelessWidget {
  final String title;
  final String hintText;
  final int maxLength;
  final int maxLines;
  final bool isRequired;

  const WorkDescriptionField({
    super.key,
    required this.title,
    required this.hintText,
    this.maxLength = 2000,
    this.maxLines = 8,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(text: title),
              if (isRequired)
                const TextSpan(
                  text: " *",
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),

        const SizedBox(height: 5),

        Text(
          "Describe the tasks, activities and progress you made.",
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 12),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: Column(
            children: [
              /// Toolbar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    DropdownButton<String>(
                      value: "Normal",
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Normal",
                          child: Text("Normal"),
                        ),
                      ],
                      onChanged: (_) {},
                    ),

                    const SizedBox(width: 15),

                    toolbarButton(Icons.format_bold),
                    toolbarButton(Icons.format_italic),
                    toolbarButton(Icons.format_underlined),

                    const VerticalDivider(),

                    toolbarButton(Icons.format_list_bulleted),
                    toolbarButton(Icons.format_list_numbered),

                    const VerticalDivider(),

                    toolbarButton(Icons.link),
                    toolbarButton(Icons.attach_file),
                  ],
                ),
              ),

              /// Text Field
              TextField(
                maxLines: maxLines,
                maxLength: maxLength,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16),
                  counterText: "",
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  bottom: 12,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "0/$maxLength",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget toolbarButton(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: IconButton(
        onPressed: () {},
        splashRadius: 18,
        icon: Icon(
          icon,
          size: 18,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }
}