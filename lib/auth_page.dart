import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSignup = true;
  bool isLogin = false;
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'images/delivery.png',
            ),
            height: 200,
          ),
          Text(
            'EASY PANI',
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
                color: Color(0xff56aad4),
                fontWeight: FontWeight.w500),
          ),
          Text("You Choose We Deliver"),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            child: Container(
              height: 360,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 15),
                    blurRadius: 15,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, -10),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignup = !isSignup;
                              isLogin = !isLogin;
                            });
                          },
                          child: isSignup == true
                              ? Expanded(
                                  child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Color(0xff56aad4),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ))
                              : Expanded(
                                  child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Color(0xff56aad4),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ))),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignup = !isSignup;
                              isLogin = !isLogin;
                            });
                          },
                          child: isSignup == false
                              ? Expanded(
                                  child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Color(0xff56aad4),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ))
                              : Expanded(
                                  child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Color(0xff56aad4),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ))),
                    ],
                  ),
                  TextField(
                    style: TextStyle(
                      color: Color(0xff56aad4),
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff56aad4),
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color(0xff56aad4), fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: isHidden ? false : true,
                    style: TextStyle(
                      
                      color: Color(0xff56aad4),
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: isHidden
                            ? Icon(
                                Icons.visibility,
                                color: Color(0xff56aad4),
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Color(0xff56aad4),
                              ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff56aad4),
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Color(0xff56aad4), fontSize: 14),
                    ),
                    
                  ),
                  SizedBox(height: 5),
                  isLogin == false
                      ? Container()
                      : TextField(
                        obscureText: isHidden ? false : true,
                          style: TextStyle(
                            color: Color(0xff56aad4),
                          ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isHidden = !isHidden;
                                });
                              },
                              icon: isHidden
                                  ? Icon(
                                      Icons.visibility,
                                      color: Color(0xff56aad4),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff56aad4),
                                    ),
                            
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff56aad4)),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                                color: Color(0xff56aad4), fontSize: 14),
                          ),
                        ),
                  isLogin == false
                      ? SizedBox(
                          height: 15,
                        )
                      : SizedBox(
                          height: 12,
                        ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HomePage()));
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff56aad4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: isLogin == false
                              ? Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              : Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                    ),
                  ),
                  isLogin == false
                      ? SizedBox(
                          height: 15,
                        )
                      : SizedBox(
                          height: 5,
                        ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  isLogin == false
                      ? SizedBox(
                          height: 15,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                          buttonType: AuthButtonType.icon,
                          buttonColor: Colors.white,
                          iconType: AuthIconType.secondary,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FacebookAuthButton(
                        onPressed: () {},
                        style: AuthButtonStyle(
                          buttonColor: Colors.white,
                          buttonType: AuthButtonType.icon,
                          iconType: AuthIconType.secondary,
                        ),
                      ),
                    ],
                  ),
                  isLogin == false
                      ? SizedBox(
                          height: 20,
                        )
                      : SizedBox(
                          height: 7,
                        ),
                
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                           isLogin == false
                              ? Text(
                                  "Don't have an account?",
                                  style: TextStyle(color: Colors.blueGrey),
                                )
                              : Text(
                                  "Already have an account?",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                            SizedBox(
                              width: 5,
                            ),
                            isLogin == false 
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLogin = !isLogin;
                                      });
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Color(0xff56aad4),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLogin = !isLogin;
                                      });
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Color(0xff56aad4),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                   
                          ],
                        )
                     
                ]),
              ),
            ),
          ),
          Spacer(),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 110,
              color: Color(0xff498cc0),
              child: Center(),
            ),
          ),
        ],
      ),
    );
  }
}
