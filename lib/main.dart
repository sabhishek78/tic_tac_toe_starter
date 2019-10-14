import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {

  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}
/*
void printBoard(List<List<String>> board) {
  print('   A   B   C ');
  List<String> rows = board.map(rowToString).toList();
  print('1 ${rows[0]}');
  print('  ---+---+---');
  print('2 ${rows[1]}');
  print('  ---+---+---');
  print('3 ${rows[2]}');
//////////////////////////

}*/

String rowToString(List<String> row) {
  return row.map((String val) => ' $val ').join('|');
}
bool validate(int row, int column, List<List<String>> board) {
  return board[row][column] == ' ';
}
List<List<Icon>> createBoard() {     //LIST OF LIST OF ICONS
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize,null));
}
class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  Icon currentPlayer=Icon(Icons.close,color: Colors.white,size: 100,);
  String player='X';
  List<List<Icon>> board = createBoard();
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
              Text('Tic-Tac-Toe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white )),
              Text('Player $player to move',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                          setState(() {
                            board[0][0]=currentPlayer;
                          });

                          if (player == 'X') {
                            player = 'O';
                            currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                          } else {

                            player = 'X';
                            currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                          }


                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child: board[0][0],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                       /* if (currentPlayer == Icon(Icons.close)) {
                          currentPlayer = Icon(FontAwesomeIcons.circle);
                        } else {
                          currentPlayer = Icon(Icons.close);
                        }*/
                        setState(() {
                          board[0][1]=currentPlayer;
                        });

                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }




                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child: board[0][1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          board[0][2]=currentPlayer;
                        });



                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:board[0][2],
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
                      onTap: ()
                      {
                        setState(() {
                          board[1][0]=currentPlayer;
                        });

                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:  board[1][0],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          board[1][1]=currentPlayer;
                        });


                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child: board[1][1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          board[1][2]=currentPlayer;
                        });


                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child: board[1][2],
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
                      onTap: ()
                      {
                        setState(() {
                          board[2][0]=currentPlayer;
                        });


                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child: board[2][0],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          board[2][1]=currentPlayer;
                        });


                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer =Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child:  board[2][1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          board[2][2]=currentPlayer;
                        });



                        if (player == 'X') {
                          player = 'O';
                          currentPlayer = Icon(FontAwesomeIcons.circle,color: Colors.white,size: 100,);
                        } else {

                          player = 'X';
                          currentPlayer = Icon(Icons.close,color: Colors.white,size: 100,);;
                        }

                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   board[2][2],
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton(
                color: Colors.blue.withOpacity(0.4),

                onPressed: () {
                  /*...*/
                },
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text(
                      "Reset",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white70,)
                  ),
                ),
              )
            ],
          ),
        )

    );
  }
}
