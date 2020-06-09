import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:recipe_app/custom_icons_icons.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 2.2,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withOpacity(0.1),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 30.0, left: 30.0, top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Breackfast',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.yellow[700],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 20.0,
                                offset: Offset(10.0, 5.0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Evening',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Dinner',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
                  child: Container(
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          height: 450.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/exp_8.jpg'),
                              alignment: Alignment.bottomRight,
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 20.0,
                                offset: Offset(3.0, 10.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          padding: EdgeInsets.all(20.0),
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                              child: Container(
                                width: double.infinity,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[400].withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Pie',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22.0),
                                              ),
                                              Text(
                                                'Blackberries',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.yellow[700],
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, conse. dolor sit amet ipsum dolor sit.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 30.0,
                          child: Hero(
                            tag: 'recipe_plate',
                            child: Image.asset(
                              'assets/images/exp_7.png',
                              height: 220.0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.0,
                          bottom: 10.0,
                          child: Text(
                            '150cl',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 34.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Ingredients',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            CustomIcons.orange,
                            color: Colors.blueGrey.withOpacity(0.5),
                            size: 34.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Orange',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            CustomIcons.grapes,
                            color: Colors.blueGrey.withOpacity(0.5),
                            size: 34.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Grapes',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            CustomIcons.strawberry,
                            color: Colors.blueGrey.withOpacity(0.5),
                            size: 34.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Strawberry',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            CustomIcons.tomato,
                            color: Colors.blueGrey.withOpacity(0.5),
                            size: 34.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Tomato',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
