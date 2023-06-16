part of sign_in_blocs;

class SignInState {
  final String email;
  final String password;
  final bool isValid;
  final String? errorMessage;

  const SignInState({
    this.email = "",
    this.password = "",
    this.isValid = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [email, password, isValid, errorMessage];

  SignInState copyWith({
    String? email,
    String? password,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
