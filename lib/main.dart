import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BasicWidgetsPage(),
    );
  }
}

class BasicWidgetsPage extends StatelessWidget {
  const BasicWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widgets'),
        backgroundColor: const Color.fromARGB(255, 184, 201, 231),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // รูปภาพ
            Image.asset(
              'assets/images/ass1.gif', // เปลี่ยนเป็น path รูปของคุณ
              height: 200,
            ),
            const SizedBox(height: 16),

            // ข้อความ Hello World
            const Text(
              'Hello World!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),

      // ปุ่ม Click Me
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Button Clicked')),
          );
        },
        label: const Text('Click Me'),
        icon: const Icon(Icons.touch_app),
        backgroundColor: const Color.fromARGB(255, 157, 148, 238),
      ),
    );
  }
}
