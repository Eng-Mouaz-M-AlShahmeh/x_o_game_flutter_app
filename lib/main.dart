import 'package:flutter/material.dart';
import 'package:xo_game/src/ui/global/app_colors.dart';
import 'package:xo_game/src/ui/global/ui_helpers.dart';
import 'package:xo_game/src/ui/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XO GAME BY ENG MOUAZ ALSHAHMEH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'XO GAME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> _buttons= <String>['','','','','','','','','',];
  bool _isStopGame = false;
  bool _isORole = false;
  Random random = Random();

  void _newGame() {
    setState(() {
      _buttons= ['','','','','','','','','',];
      _isStopGame = false;
      _isORole = false;
    });
  }

  void _oPlayerPlay() {
    int randomNumber = random.nextInt(9);
    if(_buttons[randomNumber] == '') {
      _addToList('o', randomNumber);
    } else {
      _oPlayerPlay();
    }
  }


  void _addToList(String val, int index) {
    if(_isStopGame == true) {
      return;
    }
    setState(() {
      _buttons[index] = val;
      _isORole = !_isORole;
    });
    _checkWinner();

    if(_isORole == true) {
      _oPlayerPlay();
    }
  }

  void _checkWinner() {
    // X Player Winner
    if(_buttons[0] == 'x' && _buttons[1] == 'x' && _buttons[2] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[3] == 'x' && _buttons[4] == 'x' && _buttons[5] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[6] == 'x' && _buttons[7] == 'x' && _buttons[8] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[0] == 'x' && _buttons[3] == 'x' && _buttons[6] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[1] == 'x' && _buttons[4] == 'x' && _buttons[7] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[2] == 'x' && _buttons[5] == 'x' && _buttons[8] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[0] == 'x' && _buttons[4] == 'x' && _buttons[8] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[2] == 'x' && _buttons[4] == 'x' && _buttons[6] == 'x' ) {
      Fluttertoast.showToast(
          msg: "Winner X Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }

    // O Player Winner
    if(_buttons[0] == 'o' && _buttons[1] == 'o' && _buttons[2] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[3] == 'o' && _buttons[4] == 'o' && _buttons[5] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[6] == 'o' && _buttons[7] == 'o' && _buttons[8] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[0] == 'o' && _buttons[3] == 'o' && _buttons[6] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[1] == 'o' && _buttons[4] == 'o' && _buttons[7] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[2] == 'o' && _buttons[5] == 'o' && _buttons[8] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[0] == 'o' && _buttons[4] == 'o' && _buttons[8] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
    if(_buttons[2] == 'o' && _buttons[4] == 'o' && _buttons[6] == 'o' ) {
      Fluttertoast.showToast(
          msg: "Winner O Player",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      setState(() {
        _isStopGame = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                _newGame();
              },
              icon: const Icon(Icons.refresh ,color: backgroundColor,),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 0) : _addToList('x', 0);
                      },
                      child: Text(_buttons[0],
                      style: const TextStyle(
                        color: backgroundColor,
                        fontSize: 50,
                      ),
                      ),
                      style: _buttons[0] == 'x' ||  _buttons[0] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                        onPressed: () {
                          _isORole ? _addToList('o', 1) : _addToList('x', 1);
                        },
                        child: Text(_buttons[1],
                          style: const TextStyle(
                            color: backgroundColor,
                            fontSize: 50,
                          ),
                        ),
                      style: _buttons[1] == 'x' ||  _buttons[1] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 2) : _addToList('x', 2);
                      },
                      child: Text(_buttons[2],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[2] == 'x' ||  _buttons[2] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 3) : _addToList('x', 3);
                      },
                      child: Text(_buttons[3],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[3] == 'x' ||  _buttons[3] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 4) : _addToList('x', 4);
                      },
                      child: Text(_buttons[4],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[4] == 'x' ||  _buttons[4] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 5) : _addToList('x', 5);
                      },
                      child: Text(_buttons[5],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[5] == 'x' ||  _buttons[5] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 6) : _addToList('x', 6);
                      },
                      child: Text(_buttons[6],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[6] == 'x' ||  _buttons[6] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 7) : _addToList('x', 7);
                      },
                      child: Text(_buttons[7],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[7] == 'x' ||  _buttons[7] == ''  ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context)*0.28,
                    height: screenHeight(context)*0.2,
                    child: TextButton(
                      onPressed: () {
                        _isORole ? _addToList('o', 8) : _addToList('x', 8);
                      },
                      child: Text(_buttons[8],
                        style: const TextStyle(
                          color: backgroundColor,
                          fontSize: 50,
                        ),
                      ),
                      style: _buttons[8] == 'x' ||  _buttons[8] == '' ? buttonXStyle : buttonOStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
