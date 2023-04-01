
///
///
abstract class CvSingInStates {}

class CvSingInInitialState extends CvSingInStates {}

class CvSingInLoadingState extends CvSingInStates {}

class CvSingInSuccessState extends CvSingInStates {
  final String uid;

  CvSingInSuccessState(this.uid);
}

class CvSingInErrorState extends CvSingInStates {
  final String error;

  CvSingInErrorState(this.error);
}

class CvChangePasswordVisibilityState extends CvSingInStates {}
