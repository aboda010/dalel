
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class SignupLoadingState extends AuthState {}
final class SignupSuccessSate extends AuthState {}
final class SignupFaiulreState extends AuthState {

  final String errorMessage;

  SignupFaiulreState({required this.errorMessage});
}
final class TermsAndConditionUpdateState extends AuthState {}
final class TogglePasswordVisibilityState extends AuthState {}
final class SignInLoadingState extends AuthState {}
final class SignInSuccessSate extends AuthState {}
final class SignInFaiulreState extends AuthState {

  final String errorMessage;

  SignInFaiulreState({required this.errorMessage});
}
