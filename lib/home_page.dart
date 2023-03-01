
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/game_bloc.dart';

class HomePage extends StatelessWidget {
  
 final List<MaterialColor> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.amber,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.amber,
    Colors.cyan,
    Colors.lightBlue,
    Colors.teal,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lime,
    Colors.orange,
    Colors.indigo,
    Colors.purple,
    Colors.yellow,
    Colors.lightGreen,
    Colors.amber,
    Colors.orange,
    Colors.lightBlue,
    Colors.teal,
    Colors.blue
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tic-Tac-Toe"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              if(state is ValueAdded){
                // print("series:${state.series}");
              }
              return CustomPaint(
                foregroundPainter: LinePainter((state is ValueAdded)? state.series : []),
                child: GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: GestureDetector(
                        child: Container(
                          color: colors[index],
                          child: Center(
                            child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          
                        ),
                        child: Center(
                          child:
                          (state is ValueAdded)? 
                          (state.value[index] != "X" ? 
                          Text('${state.value[index]}'):
                          const Icon(Icons.cancel,color: Colors.red,size: 40,))
                          :const Text("")
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class LinePainter extends  CustomPainter{
  final List seriesList;
  LinePainter(this.seriesList);
  @override
  void paint(Canvas canvas, Size size) {
    if(seriesList.contains("row1")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10,45),const Offset(360, 45), linePaint);
    }if(seriesList.contains("row2")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10,115),const Offset(360, 115), linePaint);
    }
    if(seriesList.contains("row3")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10,185),const Offset(360, 185), linePaint);
    }
    if(seriesList.contains("row4")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10,255),const Offset(360, 255), linePaint);
    }
    if(seriesList.contains("row5")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10,325),const Offset(360, 325), linePaint);
    }
  if(seriesList.contains("col1")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(45,10),const Offset(45, 360), linePaint);
    }
    if(seriesList.contains("col2")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(115,10),const Offset(115, 360), linePaint);
    }
    if(seriesList.contains("col3")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(185,10),const Offset(185, 360), linePaint);
    }
    if(seriesList.contains("col4")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(255,10),const Offset(255, 360), linePaint);
    }
    if(seriesList.contains("col5")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(325,10),const Offset(325, 360), linePaint);
    }
    if(seriesList.contains("dia1")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(10, 10),const Offset(365, 360), linePaint);
    }
    if(seriesList.contains("dia2")){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(360,10),const Offset(10, 360), linePaint);
    }


  }
  
 @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}