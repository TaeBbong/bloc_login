part of 'login_bloc.dart';

class LoginState extends Equatable {
  final FormzStatus status;
  final Username username;
  final Password password;

  const LoginState(
      {this.status = FormzStatus.pure,
      this.username = const Username.pure(),
      this.password = const Password.pure()});

  @override
  List<Object> get props => [this.status, this.username, this.password];

  LoginState copyWith(
      {FormzStatus? status, Username? username, Password? password}) {
    return LoginState(
        status: status ?? this.status,
        username: username ?? this.username,
        password: password ?? this.password);
  }
}

class LoginInitial extends LoginState {}
