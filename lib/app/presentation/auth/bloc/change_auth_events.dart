part of auth_blocs;

abstract class ChangeAuthEvents extends Equatable {
  const ChangeAuthEvents();

  @override
  List<Object> get props => [];
}

class AuthEventChangeTab extends ChangeAuthEvents {
  final bool isSignIn;

  const AuthEventChangeTab(this.isSignIn);
}
