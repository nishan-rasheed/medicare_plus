part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class LoginDoneEvent extends LoginEvent{
  LoginDoneEvent({
    required this.email,
    required this.password,
  });
  String email;
  String password;
}
