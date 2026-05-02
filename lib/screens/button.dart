import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTab;
  final String text;
  const MyButton({super.key, required this.onTab, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(30),
              ),
              color: const Color.fromARGB(255, 219, 98, 165)
            ),
          child: 
          Text(
           text, 
           style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 15, 
            color: Colors.white
            ),
           )
        ),
      ),
    );
  }
}