import 'package:equatable/equatable.dart';

abstract class AuthEvents extends Equatable {
  const AuthEvents();

  @override
  List<Object> get props => [];
}

class AuthEventChangeTab extends AuthEvents {
  final bool isSignIn;

  const AuthEventChangeTab(this.isSignIn);
}
