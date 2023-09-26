import 'package:app_someone/screen/login_screen.dart';
import 'package:app_someone/screen/my_app.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {

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
                      'assets/Frame (4).png',
                      width: 242,
                      height: 235,
                    ),

                    SizedBox(height: 15),

                    // text reset
                    Text(
                      'Reset Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 20),

                    // text new
                    Text(
                      'New Password                                       ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 5),

                    // textformfield ==> enter password
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

                          hintText: 'Enter New Password',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    SizedBox(height: 11),

                    // text confirme
                    Text(
                      'Confirme New Password                    ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    // textformfield ==> enter confirme
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
                          hintText: 'Confirme Password',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    //ElevatedButton => register
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
                              MaterialPageRoute(builder: (context) => MyApps()),
                              (route) => false);
                        }
                        //print("");
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

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
      ),
    );
  }
}
