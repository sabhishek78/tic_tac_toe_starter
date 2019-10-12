import 'package:flutter/material.dart';

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
List<List<String>> createBoard() {
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}
class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  String currentPlayer="X";
  List<List<String>> board = createBoard();
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
              Text('Player $currentPlayer to move',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70)),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                        // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[0][0]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {

                        setState(() {
                          board[0][1]=currentPlayer;
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[0][1]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[0][2]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[1][0]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[1][1]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[1][2]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[2][0]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                       // printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[2][1]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
                          if (currentPlayer == 'X') {
                            currentPlayer = 'O';
                          } else {
                            currentPlayer = 'X';
                          }
                        });
                        //printBoard(board);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 100,
                        height:100,
                        child:   Center(child: Text('${board[2][2]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white ))),
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
