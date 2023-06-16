abstract class CvPostStates {}

class CvPostInitialState extends CvPostStates {}
class Empty extends CvPostStates {}
class GetPostsSuccess extends CvPostStates {}


class CvGetPostsLoadingState extends CvPostStates {}

class CvGetPostsSuccessState extends CvPostStates {}

class CvGetPostsErrorState extends CvPostStates
{
  final String error;

  CvGetPostsErrorState(this.error);
}

class CvPostLikePostSuccessState extends CvPostStates {}

class CvPostLikePostErrorState extends CvPostStates
{
  final String error;

  CvPostLikePostErrorState(this.error);
}
// class CvLikePostSuccessState extends CvPostStates {}
//
// class CvLikePostErrorState extends CvPostStates
// {
//   final String error;
//
//   CvLikePostErrorState(this.error);
// }
//
// class CvCommentPostSuccessState extends CvPostStates {}
//
// class CvCommentPostErrorState extends CvPostStates
// {
//   final String error;
//
//   CvCommentPostErrorState(this.error);
// }
//
// class CvChangeBottomNavState extends CvPostStates {}
//
// class CvNewPostState extends CvPostStates {}
//
// class CvProfileImagePickedSuccessState extends CvPostStates {}
//
// class CvProfileImagePickedErrorState extends CvPostStates {}
//
// class CvCoverImagePickedSuccessState extends CvPostStates {}
//
// class CvCoverImagePickedErrorState extends CvPostStates {}
//
// class CvUploadProfileImageSuccessState extends CvPostStates {}
//
// class CvUploadProfileImageErrorState extends CvPostStates {}
//
// class CvUploadCoverImageSuccessState extends CvPostStates {}
//
// class CvUploadCoverImageErrorState extends CvPostStates {}
//
// class CvUserUpdateLoadingState extends CvPostStates {}
//
// class CvUserUpdateErrorState extends CvPostStates {}

// create post

class CvCreatePostLoadingState extends CvPostStates {}

class CvCreatePostSuccessState extends CvPostStates {}

class CvCreatePostErrorState extends CvPostStates {}


class CvCreatePost1LoadingState extends CvPostStates {}

class CvCreatePost1SuccessState extends CvPostStates {}

class CvCreatePost1ErrorState extends CvPostStates {}

class CvCreatePostCommentLoadingState extends CvPostStates {}

class CvCreatePostCommentSuccessState extends CvPostStates {}

class CvCreatePostCommentErrorState extends CvPostStates {}

class PostUpdatedSuccess extends CvPostStates {}

class PostUpdatedError extends CvPostStates {
  final String message;

  PostUpdatedError({
    required this.message,
  });
}

class PostUpdatedCommentSuccess extends CvPostStates {}
class PostUpdatedCommentError extends CvPostStates {
  final String message;

  PostUpdatedCommentError({
    required this.message,
  });
}

class CvPostImagePickedSuccessState extends CvPostStates {}

class CvPostImagePickedErrorState extends CvPostStates {}

class CvRemovePostImageState extends CvPostStates {}

class CvPostVideoPickedSuccessState extends CvPostStates {}

class CvPostVideoPickedErrorState extends CvPostStates {}

class CvRemovePostVideoState extends CvPostStates {}

class PostUserUpdateLoadingState extends CvPostStates {}

class PostUserUpdateErrorState extends CvPostStates {}


class PostUploadProfileImageSuccessState extends CvPostStates {}

class PostUploadProfileImageErrorState extends CvPostStates {}
