import 'dart:math';

import 'package:app_someone/screen/login_screen.dart';
import 'package:app_someone/screen/new_password.dart';
import 'package:flutter/material.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image assets
                  Image.asset(
                    'assets/Frame (3).png',
                    width: 221,
                    height: 229,
                  ),

                  SizedBox(height: 10),

                  // text ==> enter otp
                  Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 5),

                  // text ==> a 4 digits
                  Text(
                    'A 4 digits code has been sent to',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    ' Example@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 20),

                  // container ==> 1  2  6  9
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                        ),
                        color: Colors.grey,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                        ),
                        color: Colors.grey,
                        child: Text(
                          '6',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                        ),
                        color: Colors.grey,
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                        ),
                        color: Colors.grey,
                        child: Text(
                          '9',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  // ElevatedButton ==> Verifying...
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        left: 115,
                        right: 115,
                        top: 18,
                        bottom: 18,
                      ),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewPassword(),
                            ),
                            (route) => false);
                      }
                    },
                    child: Text(
                      'Verifying...',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  SizedBox(height: 80),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // text => dont have
                      Text(
                        'Don’t have an account ?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // GestureDetector ==> sign up
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                                (route) => false);
                          }
                        },
                        child: Text(
                          "Sign UP",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
