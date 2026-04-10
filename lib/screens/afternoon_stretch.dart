import 'package:flutter/material.dart';

class StretchingPage extends StatelessWidget {
  const StretchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afternoon Stretching', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
        backgroundColor: const Color.fromARGB(255, 216, 145, 169),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      
      SizedBox(height: 30),
         TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
                borderRadius: BorderRadius.circular(20),
              ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
                borderRadius: BorderRadius.circular(20),          
            ),   
            ),        
          ),
        ]
        ),
      ),
    );
  }
  
}