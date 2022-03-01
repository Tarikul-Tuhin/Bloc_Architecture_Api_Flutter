import 'dart:async';

import 'package:bloc_exercise/services/boardService.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BoardService _boardService;
  HomeBloc(this._boardService) : super(HomeLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      final activity = await _boardService.getBoardActivity();
      emit(HomeLoadedState(activity.activity, activity.type, activity.key));
    });
  }
}
