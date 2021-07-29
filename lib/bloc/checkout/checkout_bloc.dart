import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pharma/bloc/template/bloc/test_event.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'checkout_state.dart';

class CheckoutBloc extends Bloc<testEvent, CheckoutState> {
  CheckoutBloc(BuildContext context) : super(CheckoutState.initialState);

  @override
  Stream<CheckoutState> mapEventToState(testEvent event) async* {
    switch (event.runtimeType) {
      case ErrorEvent:
        final error = (event as ErrorEvent).error;
        yield state.clone(error: "");
        yield state.clone(error: error);
        break;
    }
  }

  @override
  void onError(Object error, StackTrace stacktrace) {
    _addErr(error);
    super.onError(error, stacktrace);
  }

  @override
  Future<void> close() async {
    await super.close();
  }

  void _addErr(e) {
    if (e is StateError) return;
    try {
      add(ErrorEvent((e is String)
          ? e
          : (e.message ?? "Something went wrong. Please try again!")));
    } catch (e) {
      add(ErrorEvent("Something went wrong. Please try again!"));
    }
  }
}
