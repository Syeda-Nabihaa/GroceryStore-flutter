import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Log In",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Text("Enter Your email and password"),
          SizedBox(height: 30),
          SizedBox(
            width: 330,
            child: TextField(
              style: TextStyle(color: Color(0xFF53B175)),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF53B175)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF53B175)),
                ),
                hintText: "Enter Your Email",
                prefixIcon: Icon(Icons.email, color: Color(0xFF53B175)),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 330,
            child: TextField(
              style: TextStyle(color: Color(0xFF53B175)),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF53B175)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF53B175)),
                ),
                hintText: "Enter Your Password",
                prefixIcon: Icon(Icons.lock, color: Color(0xFF53B175)),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFF53B175),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),

    );
  }
}
