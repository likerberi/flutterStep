import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      fillColor: Colors.blueAccent,
      splashColor: Colors.lightBlueAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 15.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
            Icons.search,
            color: Colors.amber,
            ),
            const SizedBox(
              width: 7.0,
            ),
            const Text(
              "FRAME",
              style: TextStyle(
                  color: Colors.white
              )
            )
          ],
      ),
    ));
  }
}