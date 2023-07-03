library sign_in_blocs;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/data/user/firebase_auth.dart';

part 'sign_in_events.dart';
part 'sign_in_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final FirebaseAuthentication authRepository;

  SignInBloc({required this.authRepository}) : super(SignInSuccess()) {
    on<SignIn>((event, emit) async {
      emit(SignInLoading());
      try {
        await authRepository.signIn(
            email: event.email, password: event.password);
        emit(SignInSuccess());
      } catch (e) {
        emit(SignInFailState(e.toString()));
      }
    });

    on<GoogleSignIn>((event, emit) async {
      emit(SignInLoading());
      try {
        await authRepository.signInWithGoogle();
        emit(SignInSuccess());
      } catch (e) {
        emit(SignInFailState(e.toString()));
      }
    });

    on<SignOut>((event, emit) async {
      emit(SignInLoading());
      await authRepository.signOut();
    });
  }
}
