import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class RegBloc extends Bloc<RegEvents, RegStates> {
  RegBloc() : super(RegInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<RegStates> emit) async {
    emit(Loading());

    // emit(Fething());
    // await Future.delayed(Duration(seconds: 2));
    // RegModel RegModel;

    Map map = {
      "name": event.name,
      "email": event.email,
      "phone": event.phone,
      "password": event.password,
      "newpass": event.newpass,
    };
    // RegModel = await Repository().checkPhoneNumber(url: '/user/Reg', data: map);
    print(map);
    if (event.name == "Kottayam") {
      emit(RegSuccess());
    } else {
      emit(RegError(error: "invalid"));
    }
    // if (RegModel.status == true) {
    //   emit(RegSuccess());
    // } else if (RegModel.status == false) {
    //   emit(RegError(error: "Invalid credentials"));
    // }

    // if (event.name == "abc" && event.password == "123") {
    //   emit(RegSuccess());
    // } else {
    //   emit(RegError(error: "Invalid credentials"));
    // }
  }
}

class RegEvents {}

class VerifyPassword extends RegEvents {
  final String? name, email, phone, password, newpass;

  VerifyPassword(
      {this.name, this.email, this.phone, this.password, this.newpass});
}

class RegStates {}

class RegInitial extends RegStates {}

class Loading extends RegStates {}

class Fething extends RegStates {}

class RegSuccess extends RegStates {}

class RegError extends RegStates {
  final String? error;

  RegError({this.error});
}
