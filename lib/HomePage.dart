import 'package:flutter/material.dart';
import 'package:student_info/Register.dart';
import 'Login.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('NIBM Student Management'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(45, 68, 139, 1),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/image/nibm.png'),
          ),
          Text('Kurunegala Branch',
          style: TextStyle(
            color: Color.fromRGBO(45, 68, 139, 1),
            fontSize: 30
          ),
          ),
          Padding(padding: const EdgeInsets.all(1.0),
            child: Image.asset('assets/image/home.jpg', height: 300, width: 300,),
          ),
          Padding(padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
             style: ElevatedButton.styleFrom(
               primary: Color.fromRGBO(45, 68, 139, 1)
             ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(45, 68, 139, 1)
              ),
              child: const Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
