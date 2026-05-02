import 'package:ergosense/screens/login.dart';
import 'package:flutter/material.dart';

import 'button.dart';
import 'textfield_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 213, 223),
      body: SafeArea(
        child: SizedBox(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width:double.infinity , height: height/2.7, child: Image.asset("assets/assets/images/pichome.png"),
          ),
          TextFieldInpute(
            textEditingController: nameController, 
            hintText: "Enter your name", 
            icon: Icons.person,
          ),
          TextFieldInpute(
            textEditingController: emailController, 
            hintText: "Enter your email", 
            icon: Icons.email,
          ),
          TextFieldInpute(
            textEditingController: passwordController, 
            hintText: "Enter your password", 
            icon: Icons.lock,
          ),
          
        MyButton(onTab: (){}, text: "Sign Up",),

        SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Already have an account?"),
          GestureDetector(onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const LogInPage(),
              ),
            );         
          },
          child: Text(" Login", 
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          )
          ),
          ],
        ),
        ],

      )
        )
        ),

    );
  }
}