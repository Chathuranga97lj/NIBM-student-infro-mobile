import 'package:flutter/material.dart';

class UpdateStudent extends StatefulWidget {
  const UpdateStudent({super.key});
  @override
  State<UpdateStudent> createState() => _UpdateStudentState();
}

class _UpdateStudentState extends State<UpdateStudent> {
  final TextEditingController regNumberUpdateController = TextEditingController();
  final TextEditingController nameUpdateController = TextEditingController();
  final TextEditingController ageUpdateController = TextEditingController();
  final TextEditingController genderUpdateController = TextEditingController();
  final TextEditingController mobileUpdateNumberController = TextEditingController();
  final TextEditingController parentNumberUpdateController = TextEditingController();

  List<String> items = ['Student 1', 'Student 2', 'Student 3'];
  String? selectedStudent = 'Student 1';

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
            DropdownButton<String>(
              value: selectedStudent,
              items: items
                .map((e) => DropdownMenuItem<String>(
                value: e,
                child: Text(e, style: TextStyle(fontSize: 24),),
              ))
                .toList(),
              onChanged: (item) => setState(() => selectedStudent = item),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: regNumberUpdateController,
              decoration: const InputDecoration(labelText: 'Student Registration Number'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: nameUpdateController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: ageUpdateController,
              decoration: const InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: genderUpdateController,
              decoration: const InputDecoration(labelText: 'Gender'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: mobileUpdateNumberController,
              decoration: const InputDecoration(labelText: 'Mobile Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: parentNumberUpdateController,
              decoration: const InputDecoration(labelText: 'Parent Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // You can add your submit logic here.
                // For now, let's just print the entered values.
                print('Registration Number: ${regNumberUpdateController.text}');
                print('Name: ${nameUpdateController.text}');
                print('Age: ${ageUpdateController.text}');
                print('Gender: ${genderUpdateController.text}');
                print('Mobile Number: ${mobileUpdateNumberController.text}');
                print('Parent Number: ${parentNumberUpdateController.text}');
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
