import 'package:flutter/material.dart';
import 'package:medicare_plus/admin/screens/chatscreen/chat.dart';
import 'package:medicare_plus/admin/screens/dashscreen.dart';
import 'package:medicare_plus/admin/screens/department/department.dart';
import 'package:medicare_plus/admin/screens/doctor/doctor.dart';
import 'package:medicare_plus/admin/screens/patients/patient.dart';
import 'package:medicare_plus/common/login/login.dart';
import 'package:medicare_plus/common/signup/signup.dart';
import 'package:medicare_plus/common/splash/splash.dart';
import 'package:medicare_plus/doctor/screens/dashscreen.dart';
import 'package:medicare_plus/doctor/screens/home/home.dart';
import 'package:medicare_plus/router/app_constants.dart';

class AppRoute{
  Route onGenerateRoute(RouteSettings route){
   switch (route.name) {
     case RouteConstants.dashscreen:
      return MaterialPageRoute<MaterialPageRoute>(builder: (context) {
        return DashScreen();
      },)  ; 
      case RouteConstants.splashscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const SplashScreen(),);

      case RouteConstants.chatscreen:
      return MaterialPageRoute<MaterialPageRoute>(builder: (context) => const ChatMessage(),);

      case RouteConstants.doctorscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const DoctorList(),);

       case RouteConstants.patientscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const PatientScreen(),);

      case RouteConstants.departmentscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const DepartmentScreen());

      case RouteConstants.signupscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const SignupScreen());
      
      case RouteConstants.loginscreen:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => LoginScreen());

       /// doctors screen///
       /// 
       ///
       case RouteConstants.drDash:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const DrDashscreen(),);

      case RouteConstants.drProfile:
      return MaterialPageRoute<MaterialPageRoute>
      (builder: (context) => const DrProfileScreen(),);

       default:return MaterialPageRoute<MaterialPageRoute>
       (builder: (context) =>  const ErrorScreen());

      
       

   }
  }
}