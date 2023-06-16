abstract class CvSingUpStates {}

class CvSingUpInitialState extends CvSingUpStates {}

class CvSingUpLoadingState extends CvSingUpStates {}

class CvSingUpSuccessState extends CvSingUpStates {
  final String uid;

  CvSingUpSuccessState(this.uid);
}

class CvSingUpErrorState extends CvSingUpStates {
  final String error;

  CvSingUpErrorState(this.error);
}

class SocialCreateUserSuccessState extends CvSingUpStates {}

class SocialCreateUserErrorState extends CvSingUpStates {
  final String error;

  SocialCreateUserErrorState(this.error);
}

class CvnChangePasswordVisibilityState extends CvSingUpStates {}