import 'package:app_someone/screen/forget_password.dart';
import 'package:app_someone/screen/login_screen.dart';
import 'package:app_someone/screen/my_app.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

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

                    // text => welcome
                    Text('Welcome Back!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),),

                    SizedBox(height: 20),

                    // image
                    Image.asset('assets/Frame (1).png',
                      width: 219,
                      height: 266,
                    ),

                    SizedBox(height: 10),

                    // text email
                    Text('Email-ID                                                     ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 7),

                    // TextFormField ==> Email ID
                    Container(
                      margin:
                      EdgeInsets.only(left: 30, right: 30, top: 7, bottom: 27),
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
                          } else if (!text.contains('@') && !text.contains('.')) {
                            return 'Your email is incorrect!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    // text => password
                    Text(
                      'Password                                                 ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 7),

                    // TextFormField ==> password
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 7,
                        bottom: 27,
                      ),
                      child: TextFormField(
                        obscureText: isPasswordObscure,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text){
                          if(text!.isEmpty){
                            return 'Your Password cannot be empty!';
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(height: 5),

                    // GestureDetector ==> forget password
                    GestureDetector(
                      onTap: () {
                        {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()),
                                  (route) => false);
                        }
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    // ElevatedButton => register
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(
                          left: 125,
                          right: 125,
                          top: 18,
                          bottom: 18,
                        ),
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate())
                        {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApps()),
                                  (route) => false);
                        }
                        //print("");
                      },
                      child: Text('Register',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // text dont have
                        Text('Don’t have an account ?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // GestureDetector ==> sign up
                        GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate())
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
