import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:verifyphone/widgets/custom_button.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;
  const OtpScreen({super.key, required this.verificationId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String ? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
          child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_back),
            ),
          ),
        Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purple.shade50,
        ),
        child: Image.asset("assets/image2.png"),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Verification",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Enter the otp sent to your phone number.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.black38,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20,
      ),
          Pinput(
            length: 6,
            showCursor: true,
            defaultPinTheme: PinTheme(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple.shade200,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            onSubmitted: (value) {
              setState(() {
                otpCode = value;
              });
            },
          ),
          const SizedBox(height: 25,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: CustomButton(
              text: "Verify",
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Didn't receive any code?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38),),
          const SizedBox(height: 10,),
          const Text("Resend new code", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
    ],
          ),
      ),
    ),
    ),
    );
  }

  // verify otp

}
