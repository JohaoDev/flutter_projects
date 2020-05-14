import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        //Add an image
        Container(
          margin: const EdgeInsets.all(10.0), //add margin
          width: 350.0,
          height: 350.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/vimhash.png"),
                fit: BoxFit.cover),
          ),
        ),

        //add a button with an action
        Container(
          margin: const EdgeInsets.only(top: 390.0, left: 25.0),
          child: RaisedButton(
            padding: const EdgeInsets.only(
                top: 20, left: 100, right: 100, bottom: 20),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("Hello World"),
              ));
            },
            child: Text("Click Me"),
          ),
        ),
      ],
    ));
  }
}
