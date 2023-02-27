import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List numbersList = List.generate(25, (int index) => '');
  List indexList = [];
  int counter =0 ;
  GameBloc() : super(GameInitial()) {
    on<AddValue>((event, emit) {
      
      
      if(counter < 26 && !indexList.contains(event.index)){
        counter++;
        indexList.add(event.index);
      numbersList[event.index] = counter;
      emit(ValueAdded(numbersList));
      }
    });
  }
}
