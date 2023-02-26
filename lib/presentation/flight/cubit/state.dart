abstract class HomeState{}

class HomeInitialState extends HomeState{}

class Loading extends HomeState{}

class ErrorOccurred extends HomeState{
  final String error;
  ErrorOccurred({required this.error});
}
class HomeSuccess  extends HomeState{}
class DataSuccess  extends HomeState{}
class SwitchChanged  extends HomeState{}
class LogOut  extends HomeState{}
class LogOut2  extends HomeState{}
class getSearchData  extends HomeState{}
class AuthSuccess  extends HomeState{}
class SetIdAndToken  extends HomeState{}

