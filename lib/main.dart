import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; 

void main() {
  runApp(const TinaApp());
}

class TinaApp extends StatelessWidget {
  const TinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Şehir Kaşifi',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
      ),
      
      home: Center(
        child: SizedBox(
          width: 375, 
          child: HomeScreen(),
        ),
      ),
    );
  }
}