import 'package:ergosense/screens/monitoring_page.dart';
import 'package:flutter/material.dart';
import 'package:ergosense/screens/today_performance.dart';
import 'package:ergosense/screens/afternoon_stretch.dart';


class HomePage extends StatelessWidget {
  final void Function()? onTap;
  const HomePage({super.key, this.onTap});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 213, 223),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 145, 169),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 70),
              padding: const EdgeInsets.symmetric(horizontal: 15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // LEFT TEXT
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Ready to maintain great\nposture today?',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                  ),
  
                  Expanded(
                    flex: 1,
                    child: OverflowBox(
                      maxWidth: 800, 
                      maxHeight: 800,
                      child: Image.asset(
                        'assets/assets/images/pichome.png',
                        height: 200, 
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            //MONITORING CARD
            Container(
              width: 170,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 237, 239),
                borderRadius: BorderRadius.circular(25)
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Monitoring',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),    
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 2),
                  const Text('Start posture monitoring',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  ),
                  const SizedBox(height: 10),
                  
                  Align(
                    alignment: Alignment.center,
                  
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MonitoringPage()),
                      );
                       
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 216, 145, 169),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    ),
                  child: const Text('START', 
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 255, 254, 254),    
                    ),),
                  )
                  ),
                ]
              )
              ),
                  //Today Performance
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TodayPerformance()),
                  );
                },
                child: Container(
                  width: 170,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 237, 239),
                    borderRadius: BorderRadius.circular(25)
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      const Text('Today',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),    
                      ),
                      ),
                      const SizedBox(height: 1),
                      const Text('Your posture performance today',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      ),
                      const SizedBox(height: 10),

                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 216, 145, 169),
                                size: 53,
                              ),
                              const Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 243, 237, 239),
                                size: 30,
                              ),
                            ],
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Text(
                              '100% Success',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 216, 145, 169),
                              ),
                            ),
                          ),
                        ],
                      ),
                   ]                
                  ),
                ),
              ),
                 ]
              ),
          
            ),
              const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StretchingPage()),
                );
              },
              child: Container(
                height: 160,
                width: 350,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 237, 239),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  children: [

                    Expanded(
                      child: Text('Afternoon Stand & \nStretch',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),    
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: OverflowBox(
                        maxWidth: 700, // 👈 makes the image bigger than the box
                        maxHeight: 700,
                        child: Image.asset(
                        'assets/assets/images/stretching.png',
                        height: 190, // 👈 bigger than container height
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ]
              ),
              ),
            ),
          ]//children
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.pinkAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_add_rounded),
          label: 'Notifications',
          backgroundColor: Colors.pinkAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.pinkAccent,
        ),
      ],
    );
  }
}

// Monitoring Page

// Today Page

// Stretching Page

 
