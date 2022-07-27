import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async{
     if (event is LoginDoneEvent) {
       try {
       final userCredential = await FirebaseAuth.instance.
       signInWithEmailAndPassword(
        email:event.email, password:event.password,); 
        emit(LoginDoneState()); 
       }on FirebaseAuthException catch (e) {
         if (e.code == 'user-not-found') {
            print('no user ');
          } else if (e.code == 'wrong-password') {
            print('invalid password');
          }
       }
     }
    });
  }
}
