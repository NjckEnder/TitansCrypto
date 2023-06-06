import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/features/auth/bloc/auth_events.dart';
import 'package:titans_crypto/app/features/auth/bloc/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates> {
  AuthBlocs() : super(const AuthStates()){
    on<AuthEventChangeTab>((event,emit){
        emit(
          event.isSignIn ?
              AuthStateSignUp():
              AuthStateSignIn())
         ;
    });
  }
}