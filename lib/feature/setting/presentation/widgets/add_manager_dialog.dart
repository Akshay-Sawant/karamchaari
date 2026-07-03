import 'package:flutter/material.dart';

class AddManagerDialog extends StatefulWidget {
  final Function(List<String>) onSave;

  const AddManagerDialog({
    super.key,
    required this.onSave,
  });

  @override
  State<AddManagerDialog> createState() => _AddManagerDialogState();
}

class _AddManagerDialogState extends State<AddManagerDialog> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController employeeIdController =
  TextEditingController();
  final TextEditingController emailController =
  TextEditingController();
  final TextEditingController departmentController =
  TextEditingController();
  final TextEditingController employeeCountController =
  TextEditingController();

  String status = "Active";

  @override
  void dispose() {
    nameController.dispose();
    employeeIdController.dispose();
    emailController.dispose();
    departmentController.dispose();
    employeeCountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                /// Header
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Add Reporting Manager",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Manager Name
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Manager Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Manager Name";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Employee ID
                TextFormField(
                  controller: employeeIdController,
                  decoration: const InputDecoration(
                    labelText: "Employee ID",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Employee ID";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Department
                TextFormField(
                  controller: departmentController,
                  decoration: const InputDecoration(
                    labelText: "Department",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Department";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Employees Count
                TextFormField(
                  controller: employeeCountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Number of Employees",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Employee Count";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Status
                DropdownButtonFormField<String>(
                  initialValue: status,
                  decoration: const InputDecoration(
                    labelText: "Status",
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Active",
                      child: Text("Active"),
                    ),
                    DropdownMenuItem(
                      value: "Inactive",
                      child: Text("Inactive"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      status = value!;
                    });
                  },
                ),

                const SizedBox(height: 25),

                /// Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel"),
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!
                              .validate()) {
                            widget.onSave([
                              nameController.text,
                              employeeIdController.text,
                              emailController.text,
                              departmentController.text,
                              employeeCountController.text,
                              status,
                            ]);

                            Navigator.pop(context);
                          }
                        },
                        child: const Text("Save"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}