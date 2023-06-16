abstract class SocialStates {}

class SocialInitialState extends SocialStates {}

class SocialGetUserLoadingState extends SocialStates {}

class SocialGetUserSuccessState extends SocialStates {}

class SocialGetUserErrorState extends SocialStates
{
  //NavbarNewPostState
  final String message;

  SocialGetUserErrorState({
    required this.message,
  });
}
class GetUserError extends SocialStates {
  final String message;

  GetUserError({
    required this.message,
  });
}

class GetUserSuccess extends SocialStates {}

class SocialGetAllUsersLoadingState extends SocialStates {}

class SocialGetAllUsersSuccessState extends SocialStates {}

class SocialGetAllUsersErrorState extends SocialStates
{
  final String error;

  SocialGetAllUsersErrorState(this.error);
}

class SocialGetPostsLoadingState extends SocialStates {}

class SocialGetPostsSuccessState extends SocialStates {}

class SocialGetPostsErrorState extends SocialStates
{
  final String error;

  SocialGetPostsErrorState(this.error);
}

class SocialLikePostSuccessState extends SocialStates {}

class SocialLikePostErrorState extends SocialStates
{
  final String error;

  SocialLikePostErrorState(this.error);
}

class SocialCommentPostSuccessState extends SocialStates {}

class SocialCommentPostErrorState extends SocialStates
{
  final String error;

  SocialCommentPostErrorState(this.error);
}

class SocialChangeBottomNavState extends SocialStates {}

class SocialNewPostState extends SocialStates {}

class SocialProfileImagePickedSuccessState extends SocialStates {}

class SocialProfileImagePickedErrorState extends SocialStates {}

class SocialCoverImagePickedSuccessState extends SocialStates {}

class SocialCoverImagePickedErrorState extends SocialStates {}

class SocialUploadProfileImageSuccessState extends SocialStates {}

class SocialUploadProfileImageErrorState extends SocialStates {}

class SocialUploadCoverImageSuccessState extends SocialStates {}

class SocialUploadCoverImageErrorState extends SocialStates {}

class SocialUserUpdateLoadingState extends SocialStates {}

class SocialUserUpdateErrorState extends SocialStates {}


// create post

class SocialCreatePostLoadingState extends SocialStates {}

class SocialCreatePostSuccessState extends SocialStates {}

class SocialCreatePostErrorState extends SocialStates {}

class SocialPostImagePickedSuccessState extends SocialStates {}

class SocialPostImagePickedErrorState extends SocialStates {}

class SocialRemovePostImageState extends SocialStates {}


// Expr
class SocialEditPostLoadingState extends SocialStates {}
class SocialEditPostSuccessState extends SocialStates {}
class SocialEditErrorState extends SocialStates {}

class SocialGetExperienceLoadingState extends SocialStates {}

class SocialGetExperienceSuccessState extends SocialStates {}

class SocialGetExperienceErrorState extends SocialStates
{
  final String message;

  SocialGetExperienceErrorState({
    required this.message,
  });
}



// chat

class SocialSendMessageSuccessState extends SocialStates {}

class SocialSendMessageErrorState extends SocialStates {}

class SocialGetMessagesSuccessState extends SocialStates {}

class CvPostInitialState extends SocialStates {}

class CvGetPostsLoadingState extends SocialStates {}

class CvGetPostsSuccessState extends SocialStates {}

class CvGetPostsErrorState extends SocialStates
{
  final String error;

  CvGetPostsErrorState(this.error);
}

class CvPostLikePostSuccessState extends SocialStates {}

class CvPostLikePostErrorState extends SocialStates
{
  final String error;

  CvPostLikePostErrorState(this.error);
}


// create post



class CvPostImagePickedSuccessState extends SocialStates {}

class CvPostImagePickedErrorState extends SocialStates {}

class CvRemovePostImageState extends SocialStates {}


class SocialProfVideoSuccessState extends SocialStates {}

class SocialProfVideoErrorState extends SocialStates {}

class SocialRemoveProfVideoState extends SocialStates {}
