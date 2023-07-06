class UserInfo {
  final String email;
  final String password;
  final bool isValid;
  final String? errorMessage;

  const UserInfo({
    this.email = "",
    this.password = "",
    this.isValid = false,
    this.errorMessage,
  });

  List<Object?> get props => [email, password, isValid, errorMessage];

  UserInfo copyWith({
    String? email,
    String? password,
    bool? isValid,
    String? errorMessage,
  }) {
    return UserInfo(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
