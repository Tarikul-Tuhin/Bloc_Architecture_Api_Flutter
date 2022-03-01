import 'package:bloc_exercise/home/bloc/home_bloc.dart';
import 'package:bloc_exercise/services/boardService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        RepositoryProvider.of<BoardService>(context),
      )..add(LoadApiEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bloc Api"),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadingState) {
              return const CircularProgressIndicator();
            }
            if (state is HomeLoadedState) {
              return Center(
                child: Column(
                  children: [
                    Text(state.activityName),
                    Text(state.activityType),
                    Text(
                      state.key,
                    ),
                    FutureBuilder(
                        future: BoardService().getBoardActivity(),
                        builder: (context, snapshot) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.blue[200],
                                  child: ListTile(
                                    title: Text(state.activityName),
                                  ),
                                );
                              });
                        }),
                    ListTile(
                      title: Text(state.activityName),
                    ),
                    ElevatedButton(
                      onPressed: () => BlocProvider.of<HomeBloc>(context)
                          .add(LoadApiEvent()),
                      child: const Icon(Icons.refresh),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
