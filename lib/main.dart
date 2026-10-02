import 'package:flutter/material.dart';

import 'login/view/login_view.dart';
import 'forgetpassword/forget_Password.dart';
import 'produvt/view/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/login',

      routes: {
        '/login': (context) => const LoginView(),
        '/forgot-password': (context) => const ForgetPassword(),
        '/products': (context) => const ProductView(),
      },
    );
  }
}
