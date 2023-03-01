part of 'game_bloc.dart';

abstract class GameEvent {}
class AddValue extends GameEvent{
  int index;
  AddValue(this.index);
}