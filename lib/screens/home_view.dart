// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kreedy_assignment/components/circle_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: CircleImage(
                    size: size,
                    imagePath: 'assets/flutter.png',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/register'),
                        child: Text(
                          'LOGIN',
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
                      height: size.height / 15,
                      child: OutlineGradientButton(
                        onTap: () =>
                            Navigator.of(context).pushNamed('/register'),
                        strokeWidth: 2,
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.orange,
                            Colors.red,
                          ],
                        ),
                        inkWell: true,
                        radius: Radius.circular(5.0),
                        child: Center(
                          child: GradientText(
                            'SIGNUP',
                            style: TextStyle(
                              fontSize: size.width / 18,
                              fontWeight: FontWeight.bold,
                            ),
                            gradientDirection: GradientDirection.rtl,
                            colors: [
                              Colors.orange,
                              Colors.red,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
