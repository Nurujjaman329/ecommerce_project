import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Customer's Account",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              radius: 64,
              backgroundColor: Colors.yellow.shade900,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enput Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enput Full Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enput Phone Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
