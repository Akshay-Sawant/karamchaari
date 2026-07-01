import 'package:flutter/material.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/sumbit_button.dart';
import 'package:karamchaari/feature/daily_update/presentation/widgets/work_description_field.dart';
import 'project_dropdown.dart';



class DailyUpdateCard extends StatelessWidget {
  const DailyUpdateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Information Card
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xffF5F9FF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.blue.shade100,
              ),
            ),
            child: const Row(
              children: [

                Icon(
                  Icons.info_outline,
                  color: Colors.blue,
                ),

                SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Provide a clear summary of your work",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "This update will be sent to your reporting manager and HR.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          /// Project + Date
          const Row(
            children: [

              Expanded(
                child: ProjectDropdown(),
              ),

              SizedBox(width: 20),

              Expanded(
                child: _WorkDateField(),
              ),
            ],
          ),

          const SizedBox(height: 28),

          /// Work Description
           const WorkDescriptionField(title: "Today's work",
               hintText: "Describe the task completed today"),

          const SizedBox(height: 25),

          /// Tomorrow Plan
          const _TomorrowPlanField(),

          const SizedBox(height: 25),

          /// Blockers
          const _BlockersDropdown(),

          const SizedBox(height: 35),

          /// Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(110, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Clear All"),
              ),

              const SubmitButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class _WorkDateField extends StatelessWidget {
  const _WorkDateField();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Work Date *",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 8),

        TextFormField(
          decoration: InputDecoration(
            hintText: "21 June 2026",
            suffixIcon: const Icon(Icons.calendar_today_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class _TomorrowPlanField extends StatelessWidget {
  const _TomorrowPlanField();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            children: [

              TextSpan(
                text: "What are your plans for tomorrow?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextSpan(
                text: " (Optional)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          "Share your plan for tomorrow.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 10),

        TextFormField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Write your plan for tomorrow...",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class _BlockersDropdown extends StatelessWidget {
  const _BlockersDropdown();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            children: [

              TextSpan(
                text: "Any blockers or challenges?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextSpan(
                text: " (Optional)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          "Let your manager know if you are facing any issues.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 10),

        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: "Select blockers (if any)",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          items: const [],
          onChanged: (value) {},
        ),
      ],
    );
  }
}