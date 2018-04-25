import 'package:flutter/material.dart';
import 'package:travel_2/news_list.dart';
import 'package:travel_2/pages/news_preview.dart';

class NewsApp extends StatefulWidget {
  @override
  _NewsAppState createState() => new _NewsAppState();
}

class _NewsAppState extends State<NewsApp> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<Color> boughtBgColorAnimation;
  bool showBoughtOverlay = false;
  int actualPlant = 0;



  Color gradientStart = Colors.redAccent; //Change start gradient color here
  Color gradientEnd = Colors.purple[500]; //Change end gradient color here

  @override
  Widget build(BuildContext context) {
    return new Material(
      borderRadius: new BorderRadius.circular(28.0),
      child: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(1.0, 0.0),
              end: const FractionalOffset(0.0, 1.5),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),
        ),

        child: new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: new Text("NewsToday",
              textAlign: TextAlign.left,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 24.0,fontWeight: FontWeight.bold,

              ),
            ),

          ),
        body: new Stack(
          alignment: Alignment.center,
          children:<Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Expanded(
                    child: new PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:NewsList.length ,
                        itemBuilder: (_,int pos) => new NewsPreview(NewsList[pos]),
                        onPageChanged: (int newNewsPos) => actualPlant = newNewsPos,

                    ),

                ),
              ],
            ),
            ],

    ),
        ),
      ),
    );
  }
}
