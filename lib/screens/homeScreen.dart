import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'dart:ui';

import 'package:recipe_app/screens/recipeScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 15.0,
            offset: Offset(0.0, 0.0))
      ],
      maxHeight: 280,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      collapsed: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
          image: DecorationImage(
            image: AssetImage('assets/images/exp_9.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 120.0,
            height: 5.0,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
      panel: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          image: DecorationImage(
            image: AssetImage('assets/images/exp_9.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Valley Farm',
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
              Text(
                'Eggs',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[400].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Fruit',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                            Divider(
                              color: Colors.yellow[700],
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, conse. dolor sit.',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: _homeBody(),
    ));
  }

  Widget _homeBody() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 2.2,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(color: Colors.lightBlueAccent.withOpacity(0.1)),
        ),
        Column(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 40.0,
                      width: 3.0,
                      decoration: BoxDecoration(color: Colors.yellow[700]),
                    ),
                    Text(
                      'Fine dining',
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.menu,
                        size: 32.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 70.0),
                  child: Column(
                    children: <Widget>[
                      _dinnerImage('assets/images/exp_1.jpg'),
                      _dinnerImage('assets/images/exp_2.jpg'),
                      _dinnerImage('assets/images/exp_3.jpg'),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topLeft,
                        widthFactor: 0.73,
                        child: Hero(
                          tag: 'recipe_plate',
                          child: Image.asset(
                            'assets/images/exp_7.png',
                            height: 230.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Pie',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'blackberries',
                          style: TextStyle(fontSize: 20.0),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 185.0,
                      padding: EdgeInsets.only(left: 0.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consecte.',
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '150cl',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => RecipeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 12.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.yellow[700],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 20.0,
                                  offset: Offset(10.0, 5.0))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ingredients',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _dinnerImage(String image) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 20.0,
              offset: Offset(
                3.0,
                10.0,
              ))
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
