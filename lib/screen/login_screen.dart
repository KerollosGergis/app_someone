import 'package:app_someone/main.dart';
import 'package:app_someone/screen/my_app.dart';
import 'package:app_someone/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


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
                    // Text Welcome
                    Text(
                      'Welcome with someone',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    // Text Lets help
                    Text(
                      'Let’s help you meet up your work',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    // text => name
                    Text(
                      'Name                                                        ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    // TextFormField  ==> name
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 30, top: 7, bottom: 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text) {
                          if (text!.isEmpty) {
                            return 'Your Name cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    // text => email
                    Text(
                      'Email-ID                                                   ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 7),

                    // TextFormField ==> Emil id
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 30, top: 7, bottom: 27),
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
                            return 'Your Name cannot be empty!';
                          } else if (!text.contains('@') &&
                              !text.contains('.')) {
                            return 'Your email is incorrect!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    //text => password
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
                      ),
                    ),

                    SizedBox(height: 10),

                    // text => confirme
                    Text(
                      'Confirme Password                                 ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 7),

                    //TextFormField ==> confirme password
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 7,
                        bottom: 27,
                      ),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: isPasswordObscure,
                        decoration: InputDecoration(
                          hintText: 'Confirme Password',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                       // validator: (String value){
                       //    if(value.isEmpty){
                       //      return 'please'
                       //    }
                       //    {
                       //
                       //    }
                       // },
                      ),
                    ),

                    SizedBox(height: 10),

                    // ElevatedButton => register
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

                    SizedBox(height: 17),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // text => already
                        Text(
                          'Already have an account ?',
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
                                      builder: (context) => SignInScreen()),
                                  (route) => false);
                            }
                          },
                          child: Text(
                            "Sign IN",
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
