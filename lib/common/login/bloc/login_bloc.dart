import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicare_plus/app_constants/collection_constants.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginDoneEvent) {
        try {
          final doctorDocument =
              FirebaseFirestore.instance.collection(doctorCollection);

          final admiDocument =
              FirebaseFirestore.instance.collection(adminCollection);

          final userCredential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );


          final doctorDoc =
              await doctorDocument.doc(userCredential.user!.uid).get();
          final adminDoc =
              await admiDocument.doc(userCredential.user!.uid).get();

          if (doctorDoc.exists) {         
            var data = doctorDoc.data()!;
            if (data['permission'] == true) {
              emit(LoginDoctorSucess());
                 }           
          } else if (adminDoc.exists) {
            emit(LoginAdminSuccess());
          } else {
            emit(LoginFailedState(errorMessage: 'Invalid Email or Password'));
          }
        } on FirebaseAuthException catch (e) {
          // if (e.code == 'user-not-found') {
          //   print('no user ');
          // } else if (e.code == 'wrong-password') {
          //   print('invalid password');
          // }
          emit(LoginFailedState(errorMessage: 'Invalid Email or Password'));
        }
      }
    });
  }
}
