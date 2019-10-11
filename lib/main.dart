import 'package:flutter/material.dart';

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
            Text('Player X to move',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white70)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height:100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),

                    width: 100,
                    height:100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 100,
                    height:100,
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
