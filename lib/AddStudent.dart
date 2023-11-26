import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});
  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final TextEditingController regNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController parentNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(45, 68, 139, 1),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: regNumberController,
              decoration: const InputDecoration(labelText: 'Student Registration Number'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: genderController,
              decoration: const InputDecoration(labelText: 'Gender'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: mobileNumberController,
              decoration: const InputDecoration(labelText: 'Mobile Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: parentNumberController,
              decoration: const InputDecoration(labelText: 'Parent Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // You can add your submit logic here.
                // For now, let's just print the entered values.
                print('Registration Number: ${regNumberController.text}');
                print('Name: ${nameController.text}');
                print('Age: ${ageController.text}');
                print('Gender: ${genderController.text}');
                print('Mobile Number: ${mobileNumberController.text}');
                print('Parent Number: ${parentNumberController.text}');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(190, 197, 227, 1)
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
