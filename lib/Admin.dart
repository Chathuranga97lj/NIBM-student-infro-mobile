import 'package:flutter/material.dart';
import 'package:student_info/AddStudent.dart';
import 'package:student_info/SeeAndDeleteStudent.dart';
import 'package:student_info/UpdateStudent.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(45, 68, 139, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Add()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0), // Adjust the padding for more height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                backgroundColor: const Color.fromRGBO(190, 197, 227, 1)
              ),
              child: const Column(
                children: [
                  Icon(Icons.add, size: 40.0), // Add an icon with size
                  SizedBox(height: 8.0), // Add space between icon and text
                  Text('Add Student'),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeeAndDeleteStudent()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                  backgroundColor: const Color.fromRGBO(190, 197, 227, 1)
              ),
              child: const Column(
                children: [
                  Icon(Icons.visibility, size: 40.0),
                  SizedBox(height: 8.0),
                  Text('See/Delete Student'),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateStudent()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                  backgroundColor: const Color.fromRGBO(190, 197, 227, 1)
              ),
              child: const Column(
                children: [
                  Icon(Icons.edit, size: 40.0),
                  SizedBox(height: 8.0),
                  Text('Update Student'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
