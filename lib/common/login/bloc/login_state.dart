part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginAdminSuccess extends LoginState {}

class LoginDoctorSucess extends LoginState {}

class LoginFailedState extends LoginState {
  LoginFailedState({this.errorMessage});

  String? errorMessage;
}
