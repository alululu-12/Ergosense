import 'package:ergosense/screens/Sign_up.dart';
import 'package:ergosense/screens/button.dart';
import 'package:flutter/material.dart';
import 'package:ergosense/screens/textfield_screen.dart';

class LogInPage extends StatefulWidget{
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _SignupScreenState();
    
}
class _SignupScreenState extends State<LogInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            textEditingController: emailController, 
            hintText: "Enter your email", 
            icon: Icons.email,
          ),
          TextFieldInpute(
            textEditingController: passwordController, 
            hintText: "Enter your password", 
            icon: Icons.lock,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                "Forgot Password?", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 15, 
                  color: Color.fromARGB(255, 49, 49, 49)
                  ),
              )
            ),
          ),
        MyButton(onTab: (){}, text: "Log In",),

        SizedBox(height: 15,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Don't have an account?"),
          GestureDetector(onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: Text(" SignUp", 
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