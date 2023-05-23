import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groove/constants/colors.dart';
import 'package:groove/constants/fonts.dart';
import 'package:groove/widgets/g_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

bool isTapped = true;
@override
void initState() {
  isTapped = true;
}

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signUserIn() async {
    //loading circle
    

    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      // Handle the case where either email or password is empty
      print('Email or password is empty');
      return;
    }
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapping outside the TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //background image
              Image.asset(
                'assets/images/bgImage.png',
                width: MediaQuery.of(context).size.height,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.075,
                  ),

                  //logo
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.244,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.12),

                  //tagline
                  Text(
                      'Join us to discover and experience\nthe beats that move your soul.',
                      textAlign: TextAlign.center,
                      style: bold12().copyWith(color: Gcolors.neutral900)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //email textfield
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              decoration: BoxDecoration(
                                color: Gcolors.neutral0,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextField(
                                style:
                                    const TextStyle(color: Gcolors.neutral700),
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.029,
                                  ),
                                  hintText: 'E-mail',
                                  hintStyle: bold12()
                                      .copyWith(color: Gcolors.neutral200),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.019,
                            ),

                            //password textfield
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              // width: MediaQuery.of(context).size.height * 0.069,
                              decoration: BoxDecoration(
                                color: Gcolors.neutral0,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TextField(
                                      style: const TextStyle(
                                          color: Gcolors.neutral700),
                                      controller: passwordController,
                                      obscureText: isTapped,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.16,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.029,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.029,
                                        ),
                                        hintText: 'Password',
                                        hintStyle: bold12().copyWith(
                                            color: Gcolors.neutral200),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),

                                      //eye button
                                      child: InkWell(
                                        child: isTapped
                                            ? const FaIcon(FontAwesomeIcons.eye,
                                                color: Gcolors.neutral700)
                                            : const FaIcon(
                                                FontAwesomeIcons.eyeSlash,
                                                color: Gcolors.neutral700),
                                        onTap: () {
                                          setState(() {
                                            isTapped = !isTapped;
                                          });
                                        },
                                      ),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.0188,
                            ),

                            //forgot password
                            Text('Forgot Password?',
                                style: bold10()
                                    .copyWith(color: const Color(0xffFF1F1F)))
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0376,
                        ),

                        //logIn button
                        gButton(
                            Text(
                              'Log in',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            MediaQuery.of(context).size.width * 0.916,
                            MediaQuery.of(context).size.height * 0.075,
                            signUserIn()),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0188,
                        ),

                        //or continue with
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Gcolors.neutral400,
                              height: 0.4,
                              width: MediaQuery.of(context).size.width * 0.31,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.031,
                            ),
                            Text(
                              'or continue with',
                              style: medium12()
                                  .copyWith(color: Gcolors.neutral400),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.031,
                            ),
                            Container(
                              color: Gcolors.neutral400,
                              height: 0.4,
                              width: MediaQuery.of(context).size.width * 0.31,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0188,
                        ),

                        //google signin button
                        gIconButton(
                            const Icon(
                              FontAwesomeIcons.google,
                              color: Color(0xff0021F5),
                            ),
                            Text(
                              'Log in with Google',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            MediaQuery.of(context).size.width * 0.916,
                            MediaQuery.of(context).size.height * 0.075)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0375,
                  ),

                  //dont have and useraccount?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an user account? ",
                        style: bold12().copyWith(color: Gcolors.neutral700),
                      ),
                      InkWell(
                        child: Text(
                          'SignUp',
                          style: bold12().copyWith(
                              color: const Color(0xff0021F5),
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
