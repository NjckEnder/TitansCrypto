part of sign_in_blocs;

abstract class SignInEvent{
  const SignInEvent();
}

class EmailEvent extends SignInEvent{
  final String email;
  const EmailEvent(this.email);
}

class PasswordEvent extends SignInEvent{
  final String password;
  const PasswordEvent(this.password);
}

class HideShowPasswordEvent extends SignInEvent {
  // final bool isHide;
  // HideShowPasswordEvent({this.isHide});
}

class ContinuePhoneEvent extends SignInEvent {
  final String phone;
  ContinuePhoneEvent(this.phone);
}

class GoogleEvent extends SignInEvent{}

class FacebookEvent extends SignInEvent{}

