abstract class EditProfileStates {}

class EditProfileInitialState extends EditProfileStates {}

// Expr
class EditProfileLoadingState extends EditProfileStates {}
class EditProfileSuccessState extends EditProfileStates {}
class EditProfileErrorState extends EditProfileStates {}

class EditProfileExperienceLoadingState extends EditProfileStates {}

class EditProfileExperienceSuccessState extends EditProfileStates {}

class EditProfileExperienceErrorState extends EditProfileStates
{
  final String message;

  EditProfileExperienceErrorState({
    required this.message,
  });
}



// chat

class SocialSendMessageSuccessState extends EditProfileStates {}

class SocialSendMessageErrorState extends EditProfileStates {}

class SocialGetMessagesSuccessState extends EditProfileStates {}

class CvPostInitialState extends EditProfileStates {}

class CvGetPostsLoadingState extends EditProfileStates {}

class CvGetPostsSuccessState extends EditProfileStates {}

class CvGetPostsErrorState extends EditProfileStates
{
  final String error;

  CvGetPostsErrorState(this.error);
}

class CvPostLikePostSuccessState extends EditProfileStates {}

class CvPostLikePostErrorState extends EditProfileStates
{
  final String error;

  CvPostLikePostErrorState(this.error);
}


class EditCreateVideoLoadingState extends EditProfileStates {}

class EditCreateVideoSuccessState extends EditProfileStates {}

class EditCreateVideoErrorState extends EditProfileStates {}


class EditProfileProfVideoSuccessState extends EditProfileStates {}

class EditProfileProfVideoErrorState extends EditProfileStates {}

class EditProfileRemoveProfVideoState extends EditProfileStates {}

