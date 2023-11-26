import 'package:flutter/material.dart';

class StudentItem extends StatelessWidget {
  final String name;
  final VoidCallback onDelete;

  const StudentItem({super.key, required this.name, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        tileColor: const Color.fromRGBO(190, 197, 227, 1),
        textColor: Colors.black,
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}