import 'package:elevate_flutter_task/presentation/screens/product_screen.dart';
import 'package:flutter/material.dart';

import 'core/di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elevate Flutter Task',
      theme: ThemeData(useMaterial3: true),
      home: const ProductScreen(),
    );
  }
}
