import 'dart:async';

import 'package:bloc_exercise/services/boardService.dart';

import 'package:bloc/bloc.dart';
import 'package:bloc_exercise/services/getMembersService.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BoardService _boardService;
  final GetMembersList _getMembersList;
  HomeBloc(this._boardService, this._getMembersList)
      : super(HomeLoadingState()) {
    // on<LoadApiEvent>((event, emit) async {
    //   final activity = await _boardService.getBoardActivity();
    //   emit(HomeLoadedState(activity.activity, activity.type, activity.key));
    // });
    on<LoadApiEvent>((event, emit) async {
      final activity = await _getMembersList.getMembers('MeI420');
      emit(MembersHomeLoadedState(
          activity[3].name, activity[3].memberRole, activity));
      // }
    });
  }
}
