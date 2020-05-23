import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {  // Colors.orange - 
    // var buttonWidth = 80.0;
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          testContainer("icons8-replay-60", "orange"),
          testContainer("icons8-delete-60", "red"),
          testContainer("icons8-star-60", "blue"),
          testContainer("icons8-heart-60", "green"),
          testContainer("icons8-lightning-bolt-60", "purple"),
        ],
      ),
    );
  }
}
class testContainer extends StatelessWidget {
    var buttonWidth = 80.0;
    final String colorName;
    final String imageName;
    testContainer(this.imageName, this.colorName);

  @override
  Widget build(BuildContext context) {
    var imageLink = "assets/"+ this.imageName+ ".png"+","+"color: Colors." + this.colorName;
    // var imageColor"color: Colors." + this.colorName;
   
    return Container(
            width: buttonWidth,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.05),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: RaisedButton(
              shape: CircleBorder(),
              // color: Colors.white,
              onPressed: null,
              disabledColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  imageLink,
                  // colorImage,
                ),
              ),
            ),
          );
  }
}
