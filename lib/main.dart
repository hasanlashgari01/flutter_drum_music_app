import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  Application application = Application();
  runApp(application);
}

// Hot Reload
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: getBG(),
      ),
    ),
  );
}

Widget getBG() {
  return DecoratedBox(
    position: DecorationPosition.background,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/hailee.jpg'),
        fit: BoxFit.fitHeight,
      ),
    ),
    child: getBody(),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      var player = AudioCache();
                      player.play('1.mp3');
                    },
                    child: Text(''))),
            Expanded(child: TextButton(onPressed: () {}, child: Text('')))
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: TextButton(onPressed: () {}, child: Text(''))),
            Expanded(child: TextButton(onPressed: () {}, child: Text('')))
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: TextButton(onPressed: () {}, child: Text(''))),
            Expanded(child: TextButton(onPressed: () {}, child: Text('')))
          ],
        ),
      )
    ],
  );
}
