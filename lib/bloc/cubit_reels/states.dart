abstract class ReelStates {}

class ReelInitialState extends ReelStates {}

class GetAllReelSuccess extends ReelStates {}

class UpdateReelLikeSuccess extends ReelStates {}

class UpdateReelLikeError extends ReelStates {
  final String message;

  UpdateReelLikeError({
    required this.message,
  });
}

class UpdateReelSharesSuccess extends ReelStates {}

class UpdateReelSharesError extends ReelStates {
  final String message;

  UpdateReelSharesError({
    required this.message,
  });
}