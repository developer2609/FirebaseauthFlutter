import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfiraba/splash_screen/splash_screen.dart';
import 'package:flutterfiraba/user_auth/home_page.dart';
import 'package:flutterfiraba/user_auth/sign_up_page.dart';

class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
             Card(
               elevation: 0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(
                   color: Theme.of(context).colorScheme.outline,
                 ),
                 borderRadius: const BorderRadius.all(Radius.circular(12)),
               ),
               child: const SizedBox(
                 width: 300,
                 height: 50,
                 child: Center(child: TextField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     border:  InputBorder.none,
                     hintText: "Email ",
                     contentPadding: EdgeInsets.only(left: 20)


                   ),

                 ),
               ),
             ),
             ),
             Card(
               elevation: 0,
               shape: RoundedRectangleBorder(
                 side: BorderSide(
                   color: Theme.of(context).colorScheme.outline,
                 ),
                 borderRadius: const BorderRadius.all(Radius.circular(12)),
               ),
               child: const SizedBox(
                 width: 300,
                 height: 50,
                 child: Center(child: TextField(
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                       border:  InputBorder.none,
                     hintText: "Password ",
                     contentPadding: EdgeInsets.only(left: 20)


                   ),
                   obscureText: true,

                 ),
               ),
             ),
             ),
             SizedBox(
               width: 150,
               height: 50,
               child: ElevatedButton(
                 onPressed: (){},
                 child: Text("Login"),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account?"),
                 GestureDetector(
                   child:Text("Sign Up",style: TextStyle(color: Colors.lightBlue,)),

                   onTap: () async {
                     try {
                       FirebaseAuth.instance.signInWithEmailAndPassword(
                           email: emailController.text.trim(),
                           password: passwordController.text.trim(),
                       );
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                     } on FirebaseAuthException catch (e) {
                       if (e.code == 'user-not-found') {
                         print('No user found for that email.');
                       } else if (e.code == 'wrong-password') {
                         print('Wrong password provided for that user.');
                       }
                     }
                   },
                 ),

               ],
             )
           ],
         ),
       ),
    );
  }
}
