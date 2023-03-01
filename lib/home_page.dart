import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tic_tac_toe/grid_item.dart';
import 'package:flutter_tic_tac_toe/line_painter.dart';
import 'bloc/game_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tic-Tac-Toe"),
        ),
        body: 
          BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width - 40,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CustomPaint(
                          foregroundPainter: LinePainter(
                              (state is ValueAdded) ? state.series : []),
                          child: GridView.builder(
                            padding: const EdgeInsets.all(20),
                            itemCount: 25,
                            itemBuilder: (context, index) {
                              return GridItem(
                                index: index,
                              );
                            },
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              childAspectRatio: 1,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height:25),
                    FloatingActionButton(
                                child: const Icon(Icons.refresh),
                                onPressed: () {
                                  context.read<GameBloc>().add(ResetGame());
                                },
                              ),
                            ],
                ),
              );
            },
          ),
        );
  }
}

