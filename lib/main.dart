import 'package:e_commerce/Screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/registration_provider.dart';
import 'Providers/product_provider.dart';
import 'Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner:  false,
        home: ProductsScreen(),

    );
  }
}