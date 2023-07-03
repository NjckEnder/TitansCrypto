part of sign_up_blocs;

abstract class SignUpState extends Equatable {}

class SignUpLoading extends SignUpState {
  @override
  List<Object?> get props => [];
}

class SignUpSuccessState extends SignUpState {
  @override
  List<Object> get props => [];
}

class SignUpFail extends SignUpState {
  final String error;
  SignUpFail(this.error);
  @override
  List<Object?> get props => [error];
}

class HideShowPassState extends SignUpState {
  final bool isHide;
  HideShowPassState(this.isHide);
  @override
  List<Object> get props => [];
}