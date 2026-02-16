import 'package:flutter/material.dart';
import '../models/city.dart';

class DetailScreen extends StatelessWidget {
  final City city;
  const DetailScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(city.name), backgroundColor: Colors.blueGrey[800], foregroundColor: Colors.white),
      body: Center(
        child: SizedBox(
          width: 375,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(city.image, width: double.infinity, height: 300, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(city.name, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      const Divider(),
                      Text("Nüfus: ${city.population}", style: const TextStyle(fontSize: 18)),
                      const SizedBox(height: 20),
                      Text(city.description, style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Center(child: Text("Geri Dön")),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}