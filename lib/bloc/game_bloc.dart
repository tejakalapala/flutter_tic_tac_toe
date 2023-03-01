import 'package:flutter_bloc/flutter_bloc.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List numbersList = List.generate(25, (int index) => '');
  List seriesList = [];
  List indexList = [];
  int counter =0 ;
  GameBloc() : super(GameInitial()) {
    on<AddValue>((event, emit) {
      
      
      if(counter < 25 && !indexList.contains(event.index)){
        counter++;
        indexList.add(event.index);
      numbersList[event.index] = counter;
      emit(ValueAdded(numbersList,seriesList));
      }else if(counter == 25){
        if(seriesList.length<12){
        numbersList[event.index] = 'X';
        checkSeries(numbersList);
        emit(ValueAdded(numbersList,seriesList));
        }
      }
    });
  }

  void checkSeries(List numbersList){
    if(!seriesList.contains("row1") && numbersList[0] == "X" && numbersList[1] == "X" && numbersList[2] == "X" && numbersList[3] == "X" && numbersList[4] == "X"){
      seriesList.add("row1");
    }
    if(!seriesList.contains("row2") && numbersList[5] == "X" && numbersList[6] == "X" && numbersList[7] == "X" && numbersList[8] == "X" && numbersList[9] == "X"){
      seriesList.add("row2");
    }
    if(!seriesList.contains("row3") &&numbersList[10] == "X" && numbersList[11] == "X" && numbersList[12] == "X" && numbersList[13] == "X" && numbersList[14] == "X"){
      seriesList.add("row3");
    }
    if(!seriesList.contains("row4") && numbersList[15] == "X" && numbersList[16] == "X" && numbersList[17] == "X" && numbersList[18] == "X" && numbersList[19] == "X"){
      seriesList.add("row4");
    }
    if(!seriesList.contains("row5") && numbersList[20] == "X" && numbersList[21] == "X" && numbersList[22] == "X" && numbersList[23] == "X" && numbersList[24] == "X"){
      seriesList.add("row5");
    }
    if(!seriesList.contains("col1") && numbersList[0] == "X" && numbersList[5] == "X" && numbersList[10] == "X" && numbersList[15] == "X" && numbersList[20] == "X"){
      seriesList.add("col1");
    }
    if(!seriesList.contains("col2") && numbersList[1] == "X" && numbersList[6] == "X" && numbersList[11] == "X" && numbersList[16] == "X" && numbersList[21] == "X"){
      seriesList.add("col2");
    }
    if(!seriesList.contains("col3") && numbersList[2] == "X" && numbersList[7] == "X" && numbersList[12] == "X" && numbersList[17] == "X" && numbersList[22] == "X"){
      seriesList.add("col3");
    }
    if(!seriesList.contains("col4") && numbersList[3] == "X" && numbersList[8] == "X" && numbersList[13] == "X" && numbersList[18] == "X" && numbersList[23] == "X"){
      seriesList.add("col4");
    }
    if(!seriesList.contains("col5") && numbersList[4] == "X" && numbersList[9] == "X" && numbersList[14] == "X" && numbersList[19] == "X" && numbersList[24] == "X"){
      seriesList.add("col5");
    }
    if(!seriesList.contains("dia1") && numbersList[0] == "X" && numbersList[6] == "X" && numbersList[12] == "X" && numbersList[18] == "X" && numbersList[24] == "X"){
      seriesList.add("dia1");
    }
    if(!seriesList.contains("dia2") && numbersList[4] == "X" && numbersList[8] == "X" && numbersList[12] == "X" && numbersList[16] == "X" && numbersList[20] == "X"){
      seriesList.add("dia2");
    }
  }
}
