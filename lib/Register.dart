import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(45, 68, 139, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/home.jpg', height: 150, width: 150),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
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
              child: Text(
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
