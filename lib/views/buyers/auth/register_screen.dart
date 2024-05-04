import 'package:ecommerce_practise/controllers/auth_controller.dart';
import 'package:ecommerce_practise/views/buyers/auth/log_in_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthController _authController = AuthController();

  late String email;
  late String fullName;
  late String phoneNumber;
  late String password;

  _signUpUser() async {
    String res = await _authController.signUpUsers(
        email, fullName, phoneNumber, password);

    if (res != 'Success') {
      print(res);
    } else {
      print('Good ');
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enput Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  onChanged: (value) {
                    fullName = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enput Full Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enput Phone Number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _signUpUser();
                },
                child: Container(
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account ?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
