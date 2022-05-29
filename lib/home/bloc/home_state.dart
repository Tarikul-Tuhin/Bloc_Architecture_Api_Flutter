part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  


  final String activityName;
  final String activityType;
  final String key;
  //XFile img;





  HomeLoadedState(this.activityName, this.activityType, this.key, );


  @override

  // TODO: implement props
  List<Object?> get props => [activityName, activityType, key];
}



class HomeLoadedState2 extends HomeState {
  
  HomeLoadedState2();


  @override

  // TODO: implement props
  List<Object?> get props => [];
}
