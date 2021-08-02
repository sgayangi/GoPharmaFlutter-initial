part of 'order_bloc.dart';

@immutable
class OrderState {
  final String error;

  OrderState({
    required this.error,
  });

  static OrderState get initialState => OrderState(
        error: '',
      );

  OrderState clone({
    String error = '',
  }) {
    return OrderState(
      error: error ?? this.error,
    );
  }
}
