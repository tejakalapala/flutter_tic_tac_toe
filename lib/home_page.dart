import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/game_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<MaterialColor> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.amber,
    Colors.lightGreen,
    Colors.blueGrey
  ];

  @override
  Widget build(BuildContext context) {
    // final list =  List<int>.generate(25, (i) => i + 1);
    Random random = Random();
    int randomNumber = random.nextInt(8);
    String text = '';
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tic-Tac-Toe"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              if(state is ValueAdded){
                
              }
              return GridView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: 25,
                itemBuilder: (context, index) {
                  return GridTile(
                    child: GestureDetector(
                      child: Container(
                        color: colors[randomNumber],
                        child: Center(child: Text(state is ValueAdded ? '${state.value[index]}':'')),
                      ),
                      onTap: () {
                        context.read<GameBloc>().add(AddValue(index));
                      },
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
              );
            },
          ),
        ));
  }
}
