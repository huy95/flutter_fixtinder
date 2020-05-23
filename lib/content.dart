import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - 16,
      height: MediaQuery.of(context).size.height / 4 * 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/avatar.jpg"),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Thuỷ Tiên",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "24",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                 iconText("Giáo viên tiểu học", "icons8-suitcase-60"),
                 iconText("Trường đại học Sư Phạm Hà Nội", "icons8-mortarboard-60"),
                 iconText("2 kilometers away", "icons8-marker-60"),

                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset("assets/icons8-information-60.png", color: Colors.black87, scale: 2.5),
                  )),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
class iconText extends StatelessWidget {
  final String textName;
  final String imageName;
  // (this.textName, this.imageLink);
  iconText(this.imageName, this.textName);
  @override
  Widget build(BuildContext context) {
    var imageLink = "assets/" + this.imageName + ".png";
    return  Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    Image.asset(imageLink, scale: 3),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                        child: Text(
                          textName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  );
  }
}