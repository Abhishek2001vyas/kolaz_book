import 'package:flutter/material.dart';

import 'package:scrren/signup.dart';
import 'home.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff686767),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff707070),
              Color(0xff686767),
            Color(0xff303030)
            ],begin: Alignment.topCenter,end: Alignment.bottomCenter,stops: [0.2,0.5,0.8]
            )),
              child: Center(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  (Image.asset('assets/image/Group 72644.png',
                      scale: 7, height: 50, width: 50, fit: BoxFit.fill)),
                  const SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0,left: 10),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30,right: 30,bottom: 15,top: 15),
                    child: Container(color: Color(0xff6D6A6A),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'User Name',
                          labelStyle: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
                          hintText: 'Enter Your Nam',
                          prefixIcon: Icon(Icons.account_box),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30,right: 30,bottom: 15,top: 15),
                    child: Container(color: Color(0xff6D6A6A),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: passwordVisible,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return "please enter password?";
                          } else if (value == null || value!.length < 6) {
                            return " please enter least 6 no";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  TextButton(
                    child: Padding(
                      padding: EdgeInsets.only(left: 220),
                      child: Text(
                        "forgot password ?",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.only(
                              left: 100,
                              right: 100,
                            )),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => home(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "login",
                          style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.w400),
                        )),
                  ),
                  const SizedBox(
                    height: 190,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "don't have an account?",
                          style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.normal),
                        ),
                        TextButton(
                          child: Text('signup', textAlign: TextAlign.justify,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signup(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          ),
        ));
  }
}
