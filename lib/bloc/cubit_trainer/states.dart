abstract class TrainerState {}

class TrainerInitiaState extends TrainerState {}


class GetpathSuccess extends TrainerState{}

class GetpathSuccesss extends TrainerState{}

class CreatePathLoadingState extends TrainerState{}

class CreatePathSuccessState extends TrainerState{}

class CreatePathErrorState extends TrainerState{
  final String error;

  CreatePathErrorState(this.error);

}