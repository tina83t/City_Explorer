import 'package:flutter/material.dart';
import '../models/city.dart';
import 'detail_screen.dart'; 

class HomeScreen extends StatelessWidget {
  final List<City> sehirler = [
    City(name: "İstanbul", description: "Boğazın incisi metropol.", image: "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?q=80&w=400", population: "15.8M"),
    City(name: "Paris", description: "Aşkın ve sanatın başkenti.", image: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?q=80&w=400", population: "2.1M"),
    City(name: "Tokyo", description: "Geleceğin şehri.", image: "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?q=80&w=400", population: "13.9M"),
    City(name: "New York", description: "Asla uyumayan şehir.", image: "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?q=80&w=400", population: "8.4M"),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Şehir Kaşifi"), backgroundColor: Colors.blueGrey[800], foregroundColor: Colors.white),
      body: ListView.builder(
        itemCount: sehirler.length,
        itemBuilder: (context, index) {
          return InkWell( 
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(city: sehirler[index])));
            },
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.network(sehirler[index].image, height: 150, width: double.infinity, fit: BoxFit.cover),
                  ListTile(title: Text(sehirler[index].name), subtitle: Text(sehirler[index].description)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}