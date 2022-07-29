part of 'notif_bloc.dart';

@immutable
abstract class NotifEvent {}
class NotifGetEvent extends NotifEvent{
  NotifGetEvent({required this.userId});
  String userId;
}
