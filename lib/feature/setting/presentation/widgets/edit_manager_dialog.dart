import 'package:flutter/material.dart';

class EditManagerDialog extends StatefulWidget {
  final Map<String, dynamic> manager;
  final Function(Map<String, dynamic>) onSave;

  const EditManagerDialog({
    super.key,
    required this.manager,
    required this.onSave,
  });

  @override
  State<EditManagerDialog> createState() => _EditManagerDialogState();
}

class _EditManagerDialogState extends State<EditManagerDialog> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController employeeIdController;
  late TextEditingController emailController;
  late TextEditingController departmentController;
  late TextEditingController employeeCountController;

  String status = "Active";

  @override
  void initState() {
    super.initState();

    nameController =
        TextEditingController(text: widget.manager["name"]);
    employeeIdController =
        TextEditingController(text: widget.manager["employeeId"]);
    emailController =
        TextEditingController(text: widget.manager["email"]);
    departmentController =
        TextEditingController(text: widget.manager["department"]);
    employeeCountController =
        TextEditingController(
            text: widget.manager["employees"].toString());

    status = widget.manager["status"];
  }

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

                /// Title
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Edit Reporting Manager",
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

                /// Name
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Manager Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Name";
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

                /// Employees
                TextFormField(
                  controller: employeeCountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Number of Employees",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Count";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                /// Status
                DropdownButtonFormField<String>(
                  value: status,
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
                            widget.onSave({
                              "name": nameController.text,
                              "employeeId":
                              employeeIdController.text,
                              "email": emailController.text,
                              "department":
                              departmentController.text,
                              "employees": int.parse(
                                  employeeCountController.text),
                              "status": status,
                            });

                            Navigator.pop(context);
                          }
                        },
                        child: const Text("Update"),
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