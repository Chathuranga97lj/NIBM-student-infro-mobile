import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(45, 68, 139, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/home.jpg', height: 150, width: 150),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // You can add your login logic here.
                // For now, let's just print the username and password.
                print('Username: ${usernameController.text}');
                print('Password: ${passwordController.text}');
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(45, 68, 139, 1)
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
