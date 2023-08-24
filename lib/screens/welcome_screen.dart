import 'package:flutter/material.dart';
import 'package:verifyphone/screens/register_screen.dart';
import 'package:verifyphone/widgets/custom_button.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image1.png",
                height: 300,),
                const SizedBox(height: 20,),
                const Text("Let's get started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("The best time to start is now.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 20,),
                // custom button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterScreen(),),);
                    },
                    text: "Get Started",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
