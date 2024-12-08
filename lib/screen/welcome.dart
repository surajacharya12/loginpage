import 'package:flutter/material.dart';
import 'package:medmanage1/screen/signin.dart';
import 'package:medmanage1/screen/signup.dart';
import 'package:medmanage1/widgets/customscaffold.dart';
import 'package:medmanage1/widgets/welcomebutton.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome Back!\n',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nEnter personal details to your account',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: Welcomebutton(
                      buttonText: "Sign In",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signin(),
                          ),
                        );
                      },
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: Welcomebutton(
                      buttonText: "Sign Up",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      color: Colors.white,
                      textColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
