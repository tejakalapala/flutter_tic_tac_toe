import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tic_tac_toe/bloc/game_bloc.dart';
import 'package:flutter_tic_tac_toe/constants.dart';

class GridItem extends StatelessWidget {
  final int index;
  const GridItem({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return GridTile(
          child: GestureDetector(
            child: Container(
              color: Constants.colors[index],
              child: Center(
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child:  Center(
                              child: (state is ValueAdded)
                                  ? (state.value[index] != "X"
                                      ?    state.value[index] != "" ? 
                                          TweenAnimationBuilder<double>(
                                            tween: Tween<double>(begin: 0.0, end: 1.0),
                                        curve: Curves.ease,
                                        duration: const Duration(seconds: 1),
                                            builder: (context, double opacity, Widget? child) {
                                              return Opacity(opacity:opacity ,child: Text('${state.value[index]}',
                                              style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),));
                                            }
                                          )
                                          :Container()
                                          : TweenAnimationBuilder<double>(
                                      tween: Tween<double>(begin: 0.0, end: 1.0),
                                        curve: Curves.ease,
                                        duration: const Duration(seconds: 4),
                                      builder: (context, double opacity, Widget? child) {
                                        return Opacity(
                                          opacity: opacity,
                                          child: const Icon(
                                                Icons.cancel,
                                                color: Colors.red,
                                                size: 40,
                                              ),
                                        );
                                      }
                                    )
                                    )
                                  : Container()
                                  )
                        ),
              ),
            ),
            onTap: () {
              context.read<GameBloc>().add(AddValue(index));
            },
          ),
        );
      },
    );
  }
}
