import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodayPerformance extends StatelessWidget {
  const TodayPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today Performance', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
        backgroundColor: const Color.fromARGB(255, 216, 145, 169),
      ),
       
      body: Center(         
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                
        CircularPercentIndicator(
          animation: true,
          animationDuration: 1000,
          radius: 150,
          lineWidth: 30,
          percent: 0.6,
          progressColor: const Color.fromARGB(255, 230, 135, 167),
          backgroundColor: const Color.fromARGB(255, 221, 184, 197),
          circularStrokeCap: CircularStrokeCap.round,
          center: const Text('60%', style: TextStyle(color: Colors.pink, fontSize: 50 ) ),
        ),
            const SizedBox(height: 60),

        LinearPercentIndicator(
          lineHeight: 30,
          percent: 0.6,
          progressColor: const Color.fromARGB(255, 230, 135, 167),
          backgroundColor: const Color.fromARGB(255, 221, 184, 197),
           
        ),
          const SizedBox(height: 60),
        ]       
      ),
    ),
    ),
    );
  }
}