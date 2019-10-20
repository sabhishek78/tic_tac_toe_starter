import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tictactoe_brain.dart';


void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {

    String currentPlayer = 'X';
    Token currentToken=Token.x;
    List<List<Token>> tokenBoard = createBlankTokenBoard();
    List<List<String>> stringBoard = createBlankStringBoard();
    int mapchoice = 1;



   //For TroubleShooting
  Map<int, String> playerMoveWin = {
    1: 'Player X to move',
    2: "Player O to move",
    3: "Player X wins!!!",
    4: "Player O wins!!!",
    5: "Invalid Move",
    6: "Game Drawn"
  };
    void gameReset() {
      stringBoard = [
        [null, null, null],
        [null, null, null],
        [null, null, null]
      ];
      colorBoard = [
        [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4),Colors.blue.withOpacity(0.4)],
        [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4),Colors.blue.withOpacity(0.4)],
        [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4)]
      ];
      currentPlayer = 'X';
      currentToken=Token.x;
      tokenBoard = createBlankTokenBoard();
      stringBoard = createBlankStringBoard();
      int mapchoice = 1;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo.shade400,

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/cosmos.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tic-Tac-Toe',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white)),
              Text('${playerMoveWin[mapchoice]}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white70)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                           displayTapResult(0, 0);
                           setState(() {

                           });

                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[0][0],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[0][0]),opacity: (tokenBoard[0][0]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(0, 1);
                        setState(() {

                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[0][1],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[0][1]),opacity: (tokenBoard[0][1]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(0, 2);
                        setState(() {

                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[0][2],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[0][2]),opacity: (tokenBoard[0][2]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(1, 0);
                        setState(() {

                        });

                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[1][0],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[1][0]),opacity: (tokenBoard[1][0]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(1, 1);
                        setState(() {

                        });
                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[1][1],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[1][1]),opacity: (tokenBoard[1][1]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(1, 2);
                        setState(() {

                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[1][2],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[1][2]),opacity: (tokenBoard[1][2]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(2, 0);
                        setState(() {

                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[2][0],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[2][0]),opacity: (tokenBoard[2][0]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(2, 1);
                        setState(() {

                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[2][1],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[2][1]),opacity: (tokenBoard[2][1]==null)?0:1,duration: Duration(milliseconds: 1000) ,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        displayTapResult(2, 2);
                        setState(() {

                        });
                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorBoard[2][2],
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height: 100,
                        child: AnimatedOpacity(child: createIconFromToken(tokenBoard[2][2]),opacity: (tokenBoard[2][2]==null)?0:1,duration: Duration(milliseconds: 3000) ,),
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton(
                color: Colors.blue.withOpacity(0.4),
                onPressed: () {
                  setState(() {
                    tokenBoard = createBlankTokenBoard();
                    stringBoard = createBlankStringBoard();
                    mapchoice = 1;
                    currentPlayer = 'X';
                    currentToken=Token.x;
                    gameReset();
                  });
                },
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text("Reset",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white70,
                      )),
                ),
              )
            ],
          ),
        ));
  }

  void switchPlayer() {
    if (currentPlayer == 'X') {
      currentPlayer = 'O';
      mapchoice = 2;
      currentToken=Token.o;

    } else {
      currentPlayer = 'X';
      mapchoice = 1;
      currentToken=Token.x;

    }
  }

  void displayTapResult(int row, int column) {
    print(checkForDraw(stringBoard));

    if (!validate(row, column, stringBoard)) {
      print('Invalid Move');
      setState(() {
        mapchoice = 5;
      });
    } else {
      setState(() {
        tokenBoard[row][column]=currentToken;
        stringBoard[row][column] = currentPlayer;
      });
      printBoard(stringBoard);

      if (checkForWin(stringBoard, currentPlayer)) {
        print(" $currentPlayer wins");

        if (currentPlayer == 'X') {
          //code for displaying win
          mapchoice = 3;
        } else {
          mapchoice = 4;
        }

        return;
      }

      switchPlayer();
    }
    if (checkForDraw(stringBoard)) {
      setState(() {
        mapchoice = 6;
      });

      return;
    }
  }
}
enum Token{
  x,o
}

List<List<Token>> createBlankTokenBoard() {
  //LIST OF LIST OF Tokens
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, null));
}
Widget createIconFromToken(Token t)
{

  if(t==null)

    return null;

  else if(t==Token.o)

    return Icon(
      FontAwesomeIcons.circle,
      color: Colors.white,
      size: 100,
    );

  else if (t==Token.x)

    return Icon(
      Icons.close,
      color: Colors.white,
      size: 100,
    );

}
List<List<Color>> colorBoard = [
  [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4),Colors.blue.withOpacity(0.4)],
  [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4),Colors.blue.withOpacity(0.4)],
  [Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4), Colors.blue.withOpacity(0.4)]
];
Color winningColor = Colors.red.withOpacity(0.5);
