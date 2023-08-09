import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/otp_verification_screen.dart';
import 'package:task_manager/ui/screens/auth/otp_verification_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
              ),
              Text(
                'Your Email Address',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'A 6 digit pin will send to your email address',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPVerificationScreen()));
                    }, child: Icon(Icons.arrow_circle_right_outlined)),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have An Account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.6
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('Sign In'))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
