import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Forget Password'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.password_rounded, size: 35, color: Colors.blue),
            ),

            const SizedBox(height: 20),

            const Text(
              'Reset Your Password',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const Text(
              'Enter your email and we\'ll send you a link to reset your password.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'eamil',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Send Reset Link'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
