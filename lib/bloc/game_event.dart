part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class AddValue extends GameEvent{
  int index;
  AddValue(this.index);
}