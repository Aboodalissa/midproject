import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3081/3081559.png',
              width: 100,
              height: 100,
            ),

            const Text(
              'shopapp',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              'Welcom Back',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot-password');
              },
              child: const Text('Forget Password?'),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text == 'admin@gmail.com' &&
                      passwordController.text == '1234') {
                    Navigator.pushNamed(context, '/products');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Email or Password is incorrect'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
