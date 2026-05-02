import 'package:flutter/material.dart';



class TextFieldInpute extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final IconData icon;
  
  const TextFieldInpute ({
    super.key, 
    required this.textEditingController, 
    this.isPass = false, 
    required this.hintText, 
    required this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 20),
    child: TextField( 
      obscureText: isPass,
      controller: textEditingController,
      decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle( color: Colors.black45, fontSize: 15,),
              prefixIcon: Icon(
                icon, 
                color: Colors.black45,
                ),
              contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              filled: true,
              fillColor: const Color.fromARGB(255, 248, 239, 243),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 236, 160, 186)),
                borderRadius: BorderRadius.circular(20),
              ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 233, 134, 167)),
                borderRadius: BorderRadius.circular(20),          
            ),   
            ),        
          ),
    );
   
  }
}