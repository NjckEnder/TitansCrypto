part of sign_up_blocs;

abstract class SignUpEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignUpSuccessEvent extends SignUpEvent {
  final String email, password, userName;
  SignUpSuccessEvent(this.email, this.password, this.userName);
}

class HideShowPassEvent extends SignUpEvent{
  final bool isHide;
  HideShowPassEvent(this.isHide);
}