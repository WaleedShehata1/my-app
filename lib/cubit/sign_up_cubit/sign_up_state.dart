abstract class SignUpStates {

}

class SignUpInitialState extends SignUpStates{

}
class SignUpLoadingState extends SignUpStates{

}
class SignUpSuccessState extends SignUpStates{

}
class SignUpErrorState extends SignUpStates{

  final String error;
  SignUpErrorState(this.error);

}

class UserCreateSuccessState extends SignUpStates{

  late final String uId;
  UserCreateSuccessState(this.uId);

}
class UserCreateErrorState extends SignUpStates{

  final String error;
  UserCreateErrorState(this.error);

}

class ShowPassword extends SignUpStates{

}