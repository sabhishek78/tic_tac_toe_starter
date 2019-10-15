import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

void printBoard(List<List<String>> stringboard) {
  print('   A   B   C ');
  List<String> rows = stringboard.map(rowToString).toList();
  print('1 ${rows[0]}');
  print('  ---+---+---');
  print('2 ${rows[1]}');
  print('  ---+---+---');
  print('3 ${rows[2]}');
//////////////////////////
}

bool checkForDraw(List<List<String>> stringboard) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      {
        if (stringboard[i][j] == ' ' ||
            stringboard[i][j].isEmpty ||
            stringboard[i][j] == '') {
          print("empty box found");
          return false;
        }
      }
    }
  }
  return true;
}

String rowToString(List<String> row) {
  return row.map((String val) => ' $val ').join('|');
}

bool validate(int row, int column, List<List<String>> stringboard) {
  return stringboard[row][column] == ' ';
}

bool checkForWin(List<List<String>> board, String player) {
  for (int i = 0; i <= 2; i++) {
    if (board[i][0] == player &&
        board[i][1] == player &&
        board[i][2] == player) {
      print("Row Win");
      return true;
    }
  }
  for (int i = 0; i <= 2; i++) {
    if (board[0][i] == player &&
        board[1][i] == player &&
        board[2][i] == player) {
      print("column Win");
      return true;
    }
  }
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    print("Diagonal Win");
    return true;
  }
  if (board[2][0] == player && board[1][1] == player && board[0][2] == player) {
    print("Diagonal Win");
    return true;
  }
  return false;
}

List<List<Icon>> createBoard() {
  //LIST OF LIST OF ICONS
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, null));
}

List<List<String>> createStringBoard() {
  //LIST OF LIST OF ICONS
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  Icon currentPlayer = Icon(
    Icons.close,
    color: Colors.white,
    size: 100,
  );
  String player = 'X';
  List<List<Icon>> board = createBoard();
  List<List<String>> stringboard = createStringBoard();
  Map<int, String> playerMoveWin = {
    1: 'Player X to move',
    2: "Player O to move",
    3: "Player X wins!!!",
    4: "Player O wins!!!",
    5: "Invalid Move",
    6: "Game Drawn"
  };
  int mapchoice = 1;

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

                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[0][0],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(0, 1);
                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[0][1],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(0, 2);
                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[0][2],
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

                    //printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[1][0],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(1, 1);
                    //printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[1][1],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(1, 2);
                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
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
                  onTap: () {
                    displayTapResult(2, 0);
                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[2][0],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(2, 1);
                    // printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[2][1],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    displayTapResult(2, 2);

                    //printBoard(board);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height: 100,
                    child: board[2][2],
                  ),
                ),
              ),
            ],
          ),
          FlatButton(
            color: Colors.blue.withOpacity(0.4),
            onPressed: () {
              setState(() {
                board = createBoard();
                stringboard = createStringBoard();
                mapchoice = 1;
                player = 'X';
                Icon currentPlayer = Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 100,
                );
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
    if (player == 'X') {
      player = 'O';
      mapchoice = 2;
      currentPlayer = Icon(
        FontAwesomeIcons.circle,
        color: Colors.white,
        size: 100,
      );
    } else {
      player = 'X';
      mapchoice = 1;
      currentPlayer = Icon(
        Icons.close,
        color: Colors.white,
        size: 100,
      );
    }
  }

  void displayTapResult(int row, int column) {
    print(checkForDraw(stringboard));

    if (!validate(row, column, stringboard)) {
      print('Invalid Move');
      setState(() {
        mapchoice = 5;
      });
    } else {
      setState(() {
        board[row][column] = currentPlayer;
        stringboard[row][column] = player;
      });
      printBoard(stringboard);
      if (checkForWin(stringboard, player)) {
        print(" $currentPlayer wins");

        if (player == 'X') {
          //code for displaying win
          mapchoice = 3;
        } else {
          mapchoice = 4;
        }

        return;
      }

      switchPlayer();
    }
    if (checkForDraw(stringboard)) {
      setState(() {
        mapchoice = 6;
      });

      return;
    }
  }
}
