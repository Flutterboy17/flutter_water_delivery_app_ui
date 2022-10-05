import 'package:flutter/material.dart';

import 'auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  time() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => AuthPage()));
    });
  }

  @override
  void initState() {
    time();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(image: AssetImage('images/water.png')),
          SizedBox(height: 10),
          Text("EASY PANI", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
          Text("You Choose, We Deliver", style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500)),
          ],
      ),
    );
  }
}
