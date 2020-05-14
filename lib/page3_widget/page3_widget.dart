/*
*  page5_widget.dart
*  Quiz5
*
*  Created by BB Caspian.
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quiz3/values/values.dart';

class Page3Widget extends StatefulWidget {
  @override
  _Page3WidgetState createState() => _Page3WidgetState();
}

class _Page3WidgetState extends State<Page3Widget> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: -1,
              right: 0,
              child: Image.asset(
                "assets/images/gradient.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 220,
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/QuizVector1.png',
                width: 155,
                height: 135,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              left: 0,
              top: 36,
              right: 0,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(left: 0),
                    child: FlatButton(
                      onPressed: () {
                        print('Back Arrow');
                      },
                      child: Image.asset(
                        'assets/images/back_arrow.png',
                      ),
                    )),
              ),
            ),

            // Start main ScrollView content
            
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Container(
                height: 745,
                margin: EdgeInsets.only(top: 27),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Teacher Faris',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 120),
                            Text(
                              'Total Quiz: 25',
                              style: TextStyle(
                                  fontSize: 12, fontStyle: FontStyle.italic),
                            ),
                          ]),
                      SizedBox(height: 30),
                      Container(
                          child: Row(
                        children: <Widget>[
                          Text(
                            'Question title',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      )),
                      SizedBox(height: 30),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  hintText: "Form 2/Grade 8",
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/images/frame.png'),
                            SizedBox(width: 80),
                            Text(
                              'Grade',
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(width: 80),
                            InkWell(
                              onTap: () {
                                print('Dropdown');
                              },
                              child: Image.asset(
                                  'assets/images/dropdown_icon.png',
                                  width: 24,
                                  height: 24),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/images/frame.png'),
                            SizedBox(width: 70),
                            Text(
                              'Subject',
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(width: 70),
                            InkWell(
                              onTap: () {
                                print('Dropdown');
                              },
                              child: Image.asset(
                                  'assets/images/dropdown_icon.png',
                                  width: 24,
                                  height: 24),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Expanded(
                                child:
                                    Text('Total time to complete this quiz')),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                maxLines: 2,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  hintText: "length in minute e.g. 60",
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 55),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                child:
                                    Image.asset('assets/images/but_next.png'),
                                onPressed: () {
                                  print('Next');
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // end main ScrollView content
            
            Positioned(
                left: 20,
                top: 100,
                right: 0,
                child:
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(child: Image.asset('assets/images/Ellipse.png')))),
          ],
        ),
      ),
    );
  }
}
