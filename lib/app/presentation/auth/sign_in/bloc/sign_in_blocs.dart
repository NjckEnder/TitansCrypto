library sign_in_blocs;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/data/user/firebase_auth.dart';

part 'sign_in_events.dart';
part 'sign_in_states.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuthentication authRepository;

  AuthBloc({required this.authRepository}) : super(UnAuthenticated()) {
    // When User Presses the SignIn Button, we will send the SignIn Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignIn>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signIn(
            email: event.email, password: event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });

    // When User Presses the SignUp Button, we will send the Sign Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<SignUp>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signUp(
            email: event.email, password: event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });

    // When User Presses the Google Login Button, we will send the GoogleSign Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<GoogleSignIn>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });

    // When User Presses the SignOut Button, we will send the SignOut Event to the AuthBloc to handle it and emit the UnAuthenticated State
    on<SignOut>((event, emit) async {
      emit(Loading());
      await authRepository.signOut();
      emit(UnAuthenticated());
    });
  }
}
