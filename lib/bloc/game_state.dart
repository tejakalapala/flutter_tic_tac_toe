part of 'game_bloc.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}
class ValueAdded extends GameState{
  final List value;
    ValueAdded(this.value);
   @override
     List<Object> get props => [value];
}