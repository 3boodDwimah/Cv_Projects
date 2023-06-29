abstract class JopStates {}

class JopInitialState extends JopStates {}

class GetAllJopAlertsSuccess extends JopStates {}

class GetAllJopNewsSuccess extends JopStates {}
class GetAllJopDetSuccess extends JopStates {}

class JopDetailsLoadingState extends JopStates {}

class JopDetailsSuccessState extends JopStates {}

class JopDetailsErrorState extends JopStates {

  final String message;

  JopDetailsErrorState({
    required this.message,
  });
}


