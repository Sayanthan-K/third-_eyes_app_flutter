import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:thired_eyes/Helper/theme_helper.dart';
import 'package:thired_eyes/Widget/header_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final String email;
  // final String password;

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool isLoading = false;

  // _LoginPageState(this.email, this.password);
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  // final String data = {email: _email.text, password: _password.text};
  // const data = {email: _email.text, password: _password.text};
  void SignInClick() {
    Navigator.pushNamed(
      context,
      '/home',
    );
  }

  double _headerHeight = 250;
  final _formKeySignIN = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(
                _headerHeight,
                true,
                Icons.login_rounded,
              ),
            ),
            SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Signin into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20.0),
                    Form(
                        key: _formKeySignIN,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                controller: _email,
                                decoration:
                                    ThemeHelper().textInputDecoration('Email'),

                                // decoration:
                                //     ThemeHelper().textInputDecoration('Email'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {},
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                obscureText: _obscureText,
                                controller: _password,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Open Sans',
                                  ),
                                  // counterText: lableText,
                                  fillColor: Colors.white,

                                  labelStyle: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Open Sans',
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 10, 20, 10),
                                  // focusedBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 30, 131, 22)),
                                  ),
                                  // enabledBorder: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)),
                                  // labelText: 'Password',
                                  // border: OutlineInputBorder(),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    child: Icon(
                                      _obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           ForgotPasswordPage()),
                                  // );
                                },
                                child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 370,
                              decoration:
                                  ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: !isLoading
                                      ? Text(
                                          'Sign In'.toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      : Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  Future.delayed(Duration(seconds: 2), () {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  });
                                  if (_formKeySignIN.currentState!.validate()) {
                                    SignInClick();
                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "Don\'t have an account? "),
                                TextSpan(
                                  text: 'Create',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(
                                        context,
                                        '/register',
                                        // arguments: {'exampleArgument': exampleArgument},
                                      );

                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             RegistrationPage()));
                                    },
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).accentColor),
                                ),
                              ])),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
