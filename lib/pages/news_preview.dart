import 'package:flutter/material.dart';
import 'package:travel_2/news.dart';

class NewsPreview extends StatelessWidget{

  final News news;
  NewsPreview(this.news);
  final LinearGradient backgroundGradient = new LinearGradient
    (
      colors:
      [
        new Color(0x10000000), // Light black
        new Color(0x30000000), // Dark black
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(
        padding: const EdgeInsets.only(top: 14.0,left: 20.0,right: 24.0,bottom: 45.0),
        child: new GestureDetector(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (_) => null),),
          child:new Material(
            elevation:7.0,
              shadowColor: Colors.white,
              borderRadius: new BorderRadius.circular(14.0),
              color: Colors.transparent,
              child: new Stack(
                children: <Widget>[
                  new SizedBox.expand(
                    child: new Container(
                      decoration: new BoxDecoration(
                            gradient: backgroundGradient,
                            boxShadow: [new BoxShadow(
                              color: Colors.white,
                              blurRadius: 20.0
                            )]
                      ),

                    ),
                  ),
                  new Align
                    (
                      alignment: Alignment.center,
                      child: new Hero
                        (
                          tag: 'res/' + news.NewsImg,
                          child: new Image.asset('res/newsImage.jpeg',
                                height: 800.0,
                                fit: BoxFit.cover,),

                      )
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Padding(
                      padding: EdgeInsets.all(65.0),
                      child: new RaisedButton(
                          onPressed: ()=>{},
                          color: Colors.white,
                          elevation: 1.0,
                          padding: new EdgeInsets.symmetric(
                              vertical: 14.0,horizontal:8.0,
                          ),
                        splashColor: new Color(0xFF00FF00),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12.0),
                          ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Read Article",
                              style: new TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),
                            ),
                          ],


                        ),
                          ),
                    ),
                  ),
                ],
              ),

          ),
        ),
    );
  }


}