import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/game_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonsList;

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit() {
    var gameButtons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9),
    ];
    return gameButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 9.0,
          mainAxisSpacing: 9.0,
        ),
        itemCount: buttonsList.length,
        itemBuilder: (BuildContext context, int index) => SizedBox(
          width: 100,
          height: 100,
          child: RaisedButton(
            padding: const EdgeInsets.all(8.0),
            onPressed: null,
            child: Text(
              buttonsList[index].text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            color: buttonsList[index].bg,
            disabledColor: buttonsList[index].bg,
          ),
        ),
      ),
    );
  }
}
