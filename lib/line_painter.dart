import 'package:flutter/material.dart';

import 'constants.dart';

class LinePainter extends  CustomPainter{
  final List seriesList;
  LinePainter(this.seriesList);
  @override
  void paint(Canvas canvas, Size size) {
    if(seriesList.contains(Constants.row1id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20,50),const Offset(330, 50), linePaint);
    }if(seriesList.contains(Constants.row2id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20,115),const Offset(330, 115), linePaint);
    }
    if(seriesList.contains(Constants.row3id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20,175),const Offset(330, 175), linePaint);
    }
    if(seriesList.contains(Constants.row4id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20,235),const Offset(330, 235), linePaint);
    }
    if(seriesList.contains(Constants.row5id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20,300),const Offset(330, 300), linePaint);
    }
  if(seriesList.contains(Constants.col1id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(50,20),const Offset(50, 330), linePaint);
    }
    if(seriesList.contains(Constants.col2id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(115,20),const Offset(115, 330), linePaint);
    }
    if(seriesList.contains(Constants.col3id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(175,20),const Offset(175, 330), linePaint);
    }
    if(seriesList.contains(Constants.col4id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(235,20),const Offset(235, 330), linePaint);
    }
    if(seriesList.contains(Constants.col5id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(300,20),const Offset(300, 330), linePaint);
    }
    if(seriesList.contains(Constants.dia1id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(20, 20),const Offset(330, 330), linePaint);
    }
    if(seriesList.contains(Constants.dia2id)){
      final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    
        canvas.drawLine( const Offset(330,20),const Offset(20, 330), linePaint);
    }


  }
  
 @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}