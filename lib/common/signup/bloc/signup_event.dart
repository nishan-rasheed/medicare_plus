part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}
class SignupDoneEvent extends SignupEvent{
  SignupDoneEvent(
   {
    required this.name,
    required this.email,
    required this.exp,
    required this.depart,
    required this.phone,
    required this.password,
   }   
  );
  String name;
  String email;
  String exp;
  String depart;
  String phone;
  String password;
  
}
