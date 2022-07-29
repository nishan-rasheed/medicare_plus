import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async{
      if (event is SignupDoneEvent) {
        try {
           final userCredential = await FirebaseAuth.instance.
           createUserWithEmailAndPassword(
            email: event.email, 
            password:event.password,);

            final userId = userCredential.user!.uid;

            CollectionReference doctorInfo = 
            FirebaseFirestore.instance.collection('doctordetails');

            await doctorInfo.doc(userId).set({
              'name':event.name,
              'email':event.email,
              'exp':event.exp,
              'department':event.depart,
              'phone':event.phone,
              'password':event.password,
              'type':'Doctor',
              'permission': false,
              'userid':userId,
            });
         emit(SignuppDoneState());
        } catch (e) {
          
        }
      }
    });
  }
}
