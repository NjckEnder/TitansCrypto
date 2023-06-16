library sign_in_blocs;

import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_events.dart';
part 'sign_in_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<EmailEvent>((event, emit) => _emailEvent);
    on<PasswordEvent>((event, emit) => _passwordEvent);
    on<GoogleEvent>((event, emit) => null);
    on<FacebookEvent>((event, emit) => null);
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    print('my email is ${event.email}');
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.password));
  }
}
