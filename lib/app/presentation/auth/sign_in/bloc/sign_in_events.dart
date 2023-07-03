part of sign_in_blocs;

abstract class SignInEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignIn extends SignInEvent {
  final String email;
  final String password;

  SignIn(this.email, this.password);
}

class GoogleSignIn extends SignInEvent {}

class SignOut extends SignInEvent {}