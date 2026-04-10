
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MonitoringPage extends StatelessWidget {
  const MonitoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posture Monitoring', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
        backgroundColor: const Color.fromARGB(255, 216, 145, 169),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 40),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 249, 251),
            borderRadius: BorderRadius.circular(30),
          ),

          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  buildRealtimeCircle(75),
                  const SizedBox(height:50, width: 50),
                  buildRealtimeCircle(60),
                ],
              ), 
              const SizedBox(width: 30),

              Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/assets/images/posture2.png',
                        height: 300, 
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
              
            ]          
          ),
        ),
        
        const SizedBox(height: 20),

        const Text('   Lets you know how \n   you are doing',
        textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 202, 106, 138),
          ),
        ),
        const SizedBox(height: 8),

        const Text(
          '      Greater awareness \n      results in greater improvement',
          textAlign: TextAlign.left,
          style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 2, 2, 2),
          ),
        ),
        const SizedBox(height: 70),

        Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 243, 118, 159),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            ),           
          ),
          onPressed: () {},
          child: const Text('END MONITORING',
          style: TextStyle(color: Colors.white),
           ), // Add your button action here        
        ),
        ),
          ],
        ) ,
      ),
    );
  }
  Widget buildRealtimeCircle(double percentage) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        alignment: Alignment.center,
   
        children: [
          SizedBox(
            width: 145,
            height: 140,
            child: CircularProgressIndicator(
            value: percentage / 100,
            strokeWidth: 20,
            backgroundColor: Colors.pink.shade100,
            color: const Color.fromARGB(255, 221, 90, 129),
          ),
          ),
          Text(
            percentage.toStringAsFixed(0),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}

