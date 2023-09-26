import 'package:app_someone/screen/confirm_password.dart';
import 'package:app_someone/screen/login_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // image assets
                    Image.asset(
                      'assets/Frame (2).png',
                      width: 212,
                      height: 215,
                    ),

                    SizedBox(height: 10),

                    // text forget password
                    Text(
                      'Forget Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 5),

                    // Text dont wory
                    Text(
                      '   Don’t worry ! It happens. Please enterthe',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '    address associated with your account.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 15),

                    // text email id
                    Text(
                      'Email-ID                                                                 ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 5),

                    // textformfield ==> enter email
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 7,
                        bottom: 27,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Email-ID',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text) {
                          if (text!.isEmpty) {
                            return 'Your Email-ID cannot be empty!';
                          } else if (!text.contains('@') &&
                              !text.contains('.')) {
                            return 'Your email is incorrect!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(height: 15),

                    // ElevatedButton ==> submit
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
                        if (formKey.currentState!.validate()) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ConfirmPassword(),
                              ),
                              (route) => false);
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 70),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
      ),
    );
  }
}
