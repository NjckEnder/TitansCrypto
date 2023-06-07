library auth_blocs;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_events.dart';
part 'auth_states.dart';

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