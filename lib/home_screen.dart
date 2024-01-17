import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            const SizedBox(height: 20),
            const Text('Click on the button below to go to the PDF Screen'),
            const SizedBox(height: 20),
            FutureBuilder(
              future: Future.delayed(
                const Duration(seconds: 3),
                () {
                  onPressed = () {
                    Navigator.pushNamed(context, '/pdf');
                  };
                },
              ),
              builder: (context, snapshot) {
                snapshot.connectionState == ConnectionState.done
                    ? onPressed
                    : onPressed = null;

                return ElevatedButton(
                  onPressed: onPressed,
                  child: Text('Go to PDF Screen'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
