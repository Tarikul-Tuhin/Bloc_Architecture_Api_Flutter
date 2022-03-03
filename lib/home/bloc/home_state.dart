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

  HomeLoadedState(this.activityName, this.activityType, this.key);

  @override
  // TODO: implement props
  List<Object?> get props => [activityName, activityType, key];
}

class MembersHomeLoadedState extends HomeState {
  final String memberName;
  final String memberRole;
  final List<dynamic> active;

  MembersHomeLoadedState(this.memberName, this.memberRole, this.active);

  @override
  // TODO: implement props
  List<Object?> get props => [memberName, memberRole, active];
}
