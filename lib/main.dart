
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:task_3/appwrite/appwritecontrollers.dart';
import 'package:task_3/home.dart';
import 'package:task_3/pages/aftersp.dart';
import 'package:task_3/pages/login.dart';
import 'package:task_3/pages/registerpage.dart';
import 'package:task_3/pages/splash.dart';
import 'package:task_3/theme/light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task_3',
      theme: lightMode,
      routes: {
        "/": (context) =>  SplashScreen(),
        // "/checkSession": (context) => CheckSession(),  
        "/loginscreen": (context) => LoginScreen(),  
        "/home": (context) =>  Homepage(),
        "/signup": (context) =>  SignUpPage(),
        "/login": (context) =>  LoginPage(),
      },
    );
  }
}







































































































































// Check Session Page
// class CheckSession extends StatefulWidget {
//   const CheckSession({super.key});

//   @override
//   State<CheckSession> createState() => _CheckSessionState();
// }

// class _CheckSessionState extends State<CheckSession> {
//   @override
//   void initState() {
//     checkSessions().then((value) {
//       if (value) {
//         Navigator.pushReplacementNamed(context, "/home");
//       } else {
//         Navigator.restorablePushReplacementNamed(context, "/login");
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: CircularProgressIndicator()),
//     );
//   }
// }