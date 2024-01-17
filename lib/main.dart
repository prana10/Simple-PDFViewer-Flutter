import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pdf_viewer_app/home_screen.dart';
import 'package:pdf_viewer_app/screen.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('halaman_data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/pdf': (context) => const PDFScreen(),
      },
    );
  }
}
