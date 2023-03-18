// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:kreedy_assignment/image_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: 60.0,
        bottom: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white70,
            Colors.grey.shade900,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home',
                    (route) => false,
                  ),
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: size.width / 17,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 13,
              ),
              Text(
                'Register',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: size.width / 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: size.height / 11,
              ),
              TextField(
                keyboardType: TextInputType.name,
                cursorColor: Colors.grey[50],
                onSubmitted: (_) {
                  setState(() {
                    FocusScope.of(context).unfocus();
                  });
                },
                style: TextStyle(
                  fontSize: size.width / 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[50],
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    color: Colors.grey[350],
                  ),
                  border: GradientOutlineInputBorder(
                    width: 1.6,
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.grey.shade400,
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 35,
              ),
              TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.grey[50],
                onSubmitted: (_) {
                  setState(() {
                    FocusScope.of(context).unfocus();
                  });
                },
                style: TextStyle(
                  fontSize: size.width / 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[50],
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  hintText: 'Email/Mobile no',
                  hintStyle: TextStyle(
                    color: Colors.grey[350],
                  ),
                  border: GradientOutlineInputBorder(
                    width: 1.6,
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white,
                        Colors.grey.shade400,
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 25,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                height: size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Colors.orange,
                      Colors.red,
                    ],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Get OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width / 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 27,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 3,
                      color: Colors.grey[400],
                      indent: 8.0,
                      endIndent: 10.0,
                    ),
                  ),
                  Text(
                    'Or Login With',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: size.width / 30,
                        color: Colors.grey[350],
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 3,
                      color: Colors.grey[400],
                      indent: 10.0,
                      endIndent: 8.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageButton(
                    width: size.width,
                    imagePath: 'assets/facebook.png',
                    onTap: () {},
                  ),
                  ImageButton(
                    width: size.width,
                    imagePath: 'assets/google.png',
                    onTap: () {},
                  ),
                  ImageButton(
                    width: size.width,
                    imagePath: 'assets/apple.png',
                    onTap: () {},
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
