part of sign_in_blocs;

abstract class SignInState extends Equatable {}

class SignInLoading extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInSuccess extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInFailState extends SignInState {
  final String error;

  SignInFailState(this.error);
  @override
  List<Object?> get props => [error];
}