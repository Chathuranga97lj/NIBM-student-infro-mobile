import 'package:flutter/material.dart';
import 'package:student_info/components/StudentItem.dart';

class SeeAndDeleteStudent extends StatefulWidget {
  const SeeAndDeleteStudent({super.key});

  @override
  State<SeeAndDeleteStudent> createState() => _SeeAndDeleteStudentState();
}

class _SeeAndDeleteStudentState extends State<SeeAndDeleteStudent> {
  final List<String> studentNames = [
    'John Doe',
    'Jane Smith',
    'Alex Johnson',
    // Add more student names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('See and Delete Student'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(45, 68, 139, 1),
      ),
      body: ListView.builder(
        itemCount: studentNames.length,
        itemBuilder: (context, index) {
          return StudentItem(
            name: studentNames[index],
            onDelete: () {
              // Handle delete action here
              print('Deleting student: ${studentNames[index]}');
            },
          );
        },
      ),
    );
  }
}


