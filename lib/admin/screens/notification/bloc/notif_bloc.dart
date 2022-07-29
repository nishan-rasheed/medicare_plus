import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medicare_plus/app_constants/collection_constants.dart';
import 'package:meta/meta.dart';

part 'notif_event.dart';
part 'notif_state.dart';

class NotifBloc extends Bloc<NotifEvent, NotifState> {
  NotifBloc() : super(NotifInitial()) {
    on<NotifEvent>((event, emit) async{
      if (event is NotifGetEvent) {
        try {
          // final _doctorDocument =
          //     await FirebaseFirestore.instance.collection(doctorCollection);
          // var docId = _doctorDocument.id;
          // print('+++++++++++++++++++++++');
          // print(docId);
          // _doctorDocument.doc(docId).update({
          //   'permission': true,
          // });

        final _doctorDocument =
             await FirebaseFirestore.instance.collection(doctorCollection);

          
          _doctorDocument.doc(event.userId).update({
            'permission': true,
          });   

          emit(NotifGetState());
        } catch (e) {

        }
      }
    });
  }
}
