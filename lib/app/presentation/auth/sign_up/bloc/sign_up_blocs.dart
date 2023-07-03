library sign_up_blocs;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/data/user/firebase_auth.dart';

part 'sign_up_events.dart';
part 'sign_up_states.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final FirebaseAuthentication authRepository;

  SignUpBloc({required this.authRepository}) : super(SignUpSuccessState()) {
    // fix here
    on<SignUpSuccessEvent>((event, emit) async {
      emit(SignUpLoading());
      try {
        await authRepository.signUp(
            email: event.email, password: event.password);
        emit(SignUpSuccessState());
      } catch (e) {
        emit(SignUpFail(e.toString()));
      }
    });
  }
}
