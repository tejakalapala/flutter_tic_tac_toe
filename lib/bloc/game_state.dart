part of 'game_bloc.dart';


abstract class GameState {}

class GameInitial extends GameState {}
class ValueAdded extends GameState{
  final List value;
  final List series;
    ValueAdded(this.value,this.series);
   List<Object> get props => [value];
}
class GameEnded extends GameState{}