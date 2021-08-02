part of 'order_bloc.dart';

@immutable
abstract class OrderEvent {}

class ErrorEvent extends OrderEvent {
  final String error;

  ErrorEvent(this.error);
}
