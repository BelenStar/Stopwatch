import 'package:flutter/material.dart';
import 'package:stopwatch/src/styles/styles.dart';
import 'dart:async';

class StopwatchPage extends StatefulWidget {

  @override
   createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {

  final _stopwatch =  Stopwatch();
  String _stopwatchText = '00:00.00';

  
 final _timeout = const Duration(milliseconds: 1);
  bool _isStart = true;


 void _startTimeout() {
     Timer(_timeout, _handleTimeout);
  }

  void _handleTimeout() {
    if (_stopwatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _startStopButtonPressed() {
    setState(() {
      if (_stopwatch.isRunning) {
        _isStart = true;
        _stopwatch.stop();
      } else {
        _isStart = false;
        _stopwatch.start();
        _startTimeout();
      }
    });
  }


  void _resetButtonPressed(){
    if(_stopwatch.isRunning){
    
      _startStopButtonPressed();
    }else if(_isStart = false){

    }
    setState(() {
     _stopwatch.reset();
     _setStopwatchText(); 
    });
  }
  void _setStopwatchText(){
    _stopwatchText = //_stopwatch.elapsed.inHours.toString().padLeft(2,'0') + ':'+
                     (_stopwatch.elapsed.inMinutes%60).toString().padLeft(2,'0') + ':' +
                     (_stopwatch.elapsed.inSeconds%60).toString().padLeft(2,'0') + '.' +
                     ((_stopwatch.elapsed.inMilliseconds%1000)%100).toString().padLeft(2,'0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeText.backColor,
      
      appBar: AppBar(
        title: Center(child:Text('Stopwatch',style: ThemeText.fontTitle
        ),),
        backgroundColor:ThemeText.backColor,
        titleTextStyle: ThemeText.colorTitle,
      ),
      
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(_stopwatchText, style: ThemeText.styleText),
          _createButtons(),
        ]),
      ),
    );
  }

  Widget _createButtons(){
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(onPressed: _resetButtonPressed,style: ThemeText.resetBottonStyle,
        child: const Text('Reset')), 
     const SizedBox(width: 30.0),
      ElevatedButton(onPressed: _startStopButtonPressed, style:ThemeText.startBottonStyle, 
        child: Text(_stopwatch.isRunning? 'Pause' : 'Start')),
    ],

    );
  }
}

