abstract class LoginEvent {}

class EmailChange extends LoginEvent {
  final String email;
  EmailChange(this.email);
}

class UserNameChange extends LoginEvent {
  final String username;
  UserNameChange(this.username);
}

class PasswordChange extends LoginEvent {
  final String password;
  PasswordChange(this.password);
}

class LoginSubmitted extends LoginEvent {}
