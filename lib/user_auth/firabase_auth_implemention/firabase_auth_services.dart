//
//
//
//  import 'package:firebase_auth/firebase_auth.dart';
//
// class FirabaseAutServices {
//     FirebaseAuth _auth=FirebaseAuth.instance;
//
//
//     Future<User?> signUpWithEmailAndPassword(String email,String password) async{
//       try{
//         UserCredential userCredential=await _auth.createUserWithEmailAndPassword(email: email, password: password
//         );
//             return userCredential.user;
//     }catch(e){
//         print("Error");
//       }
//
//     }
//
//     Future<User?> signInWithEmailAndPassword(String email,String password) async{
//       try{
//         UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: email, password: password
//         );
//         return userCredential.user;
//       }catch(e){
//         print("Error");
//       }
//
//     }
//
//  }
//
