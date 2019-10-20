import 'package:tic_tac_toe_starter/main.dart';

List<List<String>> createBlankStringBoard() {
  //LIST OF LIST OF ICONS
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}


void printBoard(List<List<String>> stringBoard) {
  print('   A   B   C ');
  List<String> rows = stringBoard.map(rowToString).toList();
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
  for (int i = 0; i <= 2; i++)
  {
    if (board[i][0] == player &&
        board[i][1] == player &&
        board[i][2] == player) {
      print("Row Win");

        colorBoard[i][0]=winningColor;
      colorBoard[i][1]=winningColor;
      colorBoard[i][2]=winningColor;
      return true;
    }
  }
  for (int i = 0; i <= 2; i++) {
    if (board[0][i] == player &&
        board[1][i] == player &&
        board[2][i] == player) {
      print("column Win");
      colorBoard[0][i]=winningColor;
      colorBoard[1][i]=winningColor;
      colorBoard[2][i]=winningColor;
      return true;
    }
  }
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    colorBoard[0][0]=winningColor;
    colorBoard[1][1]=winningColor;
    colorBoard[2][2]=winningColor;
    print("Diagonal Win");
    return true;
  }
  if (board[2][0] == player && board[1][1] == player && board[0][2] == player) {
    print("Diagonal Win");
    colorBoard[2][0]=winningColor;
    colorBoard[1][1]=winningColor;
    colorBoard[0][2]=winningColor;
    return true;
  }
  return false;
}
