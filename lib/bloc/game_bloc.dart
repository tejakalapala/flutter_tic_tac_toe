import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tic_tac_toe/constants.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List numbersList = List.generate(Constants.maxNumberLength, (int index) => '');
  List seriesList = [];
  List indexList = [];
  int counter =0 ;
  List selectedList = [];
  GameBloc() : super(GameInitial()) {
    on<AddValue>((event, emit) {
      if(counter < Constants.maxNumberLength && !indexList.contains(event.index)){
        counter ++;
        indexList.add(event.index);
      numbersList[event.index] = counter;
      emit(ValueAdded(numbersList,seriesList));
      }else if(counter == Constants.maxNumberLength){
        if(seriesList.length < Constants.maxLineLength){
        numbersList[event.index] = 'X';
        if(!selectedList.contains(event.index)){
        selectedList.add(event.index);
        }
        checkSeries(numbersList);
        emit(ValueAdded(numbersList,seriesList));
        }
      }
    });
     on<ResetGame>((event, emit) {
      emit(GameInitial());
      counter = 0;
      numbersList = List.generate(Constants.maxNumberLength, (int index) => '');
      indexList = [];
      seriesList = [];
      selectedList = [];
      emit(ValueAdded(numbersList, []));
     });
  }

  void checkSeries(List numbersList){
    if (!seriesList.contains(Constants.row1id) && Set.of(selectedList).containsAll(Constants.row1) ) {
      seriesList.add(Constants.row1id);
    }
    if (!seriesList.contains(Constants.row2id) && Set.of(selectedList).containsAll(Constants.row2) ) {
      seriesList.add(Constants.row2id);
    }
    if (!seriesList.contains(Constants.row3id) && Set.of(selectedList).containsAll(Constants.row3) ) {
      seriesList.add(Constants.row3id);
    }
    if (!seriesList.contains(Constants.row4id) && Set.of(selectedList).containsAll(Constants.row4) ) {
      seriesList.add(Constants.row4id);
    }
    if (!seriesList.contains(Constants.row5id) && Set.of(selectedList).containsAll(Constants.row5) ) {
      seriesList.add(Constants.row5id);
    }
    if (!seriesList.contains(Constants.col1id )&& Set.of(selectedList).containsAll(Constants.col1) ) {
      seriesList.add(Constants.col1id);
    }
    if (!seriesList.contains(Constants.col2id) && Set.of(selectedList).containsAll(Constants.col2) ) {
      seriesList.add(Constants.col2id);
    }
    if (!seriesList.contains(Constants.col3id) && Set.of(selectedList).containsAll(Constants.col3) ) {
      seriesList.add(Constants.col3id);
    }
    if (!seriesList.contains(Constants.col4id) && Set.of(selectedList).containsAll(Constants.col4) ) {
      seriesList.add(Constants.col4id);
    }
    if (!seriesList.contains(Constants.col5id) && Set.of(selectedList).containsAll(Constants.col5) ) {
      seriesList.add(Constants.col5id);
    }
    if (!seriesList.contains(Constants.dia1id) && Set.of(selectedList).containsAll(Constants.dia1) ) {
      seriesList.add(Constants.dia1id);
    }
    if (!seriesList.contains(Constants.dia2id) && Set.of(selectedList).containsAll(Constants.dia2) ) {
      seriesList.add(Constants.dia2id);
    }
    
  }
}
