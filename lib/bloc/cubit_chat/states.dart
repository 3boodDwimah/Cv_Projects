abstract class ChatState {}

class ChatInitiaState extends ChatState {}

class SocialGetUserLoadingState extends ChatState {}

// chat

class SocialSendMessageSuccessState extends ChatState {}

class SocialSendMessageErrorState extends ChatState {}

class SocialGetMessagesSuccessState extends ChatState {}

class CvPostInitialState extends ChatState {}

class CvGetPostsLoadingState extends ChatState {}

class CvGetPostsSuccessState extends ChatState {}

class CvGetPostsErrorState extends ChatState {
  final String error;

  CvGetPostsErrorState(this.error);
}

class CvPostLikePostSuccessState extends ChatState {}

class CvPostLikePostErrorState extends ChatState {
  final String error;

  CvPostLikePostErrorState(this.error);
}

class GetUserSuccess extends ChatState {}

class GetPostsSuccess extends ChatState {}

class GetMessagesSuccess extends ChatState {}

class GetUsersSuccess extends ChatState {}


class UpdateReadSuccess extends ChatState {}

class GetLastMasSuccess extends ChatState {}

class PostUpdatedSuccess extends ChatState {}

class PostUpdatedError extends ChatState {
  final String message;

  PostUpdatedError({
    required this.message,
  });
}

class SendMessage extends ChatState {
  final String message;

  SendMessage({
    required this.message,
  });
}

class CreateChatError extends ChatState {
  final String message;

  CreateChatError({
    required this.message,
  });
}
