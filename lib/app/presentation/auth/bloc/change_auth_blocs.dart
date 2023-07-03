library auth_blocs;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_auth_events.dart';
part 'change_auth_states.dart';

class AuthBlocs extends Bloc<ChangeAuthEvents, ChangeAuthStates> {
  AuthBlocs() : super(AuthStateSignIn()){
    on<AuthEventChangeTab>((event,emit){
        emit(
          event.isSignIn ?
              AuthStateSignUp():
              AuthStateSignIn())
         ;
    });
  }
}