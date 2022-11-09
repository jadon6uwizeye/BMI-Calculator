// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(15, 17, 32, 1),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                // add margin on top
                margin: EdgeInsets.only(top: 20),
                child: Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 21, 24, 44),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'BMI Calculator',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 24, 44),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // male Icon
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 24, 44),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.female,
                            color: Color.fromARGB(255, 143, 142, 142),
                            size: 60,
                          ),
                          SizedBox(height: 10),
                          Text('Female',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 143, 142, 142),
                                  fontSize: 20))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 19, 23, 41),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(
                            color: Color.fromARGB(255, 143, 142, 142),
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '180',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                color: Color.fromARGB(255, 143, 142, 142),
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Slider(
                          value: 183,
                          min: 0,
                          max: 300,
                          activeColor: Colors.white,
                          inactiveColor: Color.fromARGB(255, 143, 142, 142),
                          onChanged: (double newValue) {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 21, 24, 44),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 143, 142, 142),
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '180',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 21, 24, 44),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 30, 35, 66),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          color: Color.fromARGB(
                                              255, 182, 182, 182),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 30, 35, 66),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 182, 182, 182),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 21, 24, 44),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 143, 142, 142),
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 21, 24, 44),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 30, 35, 66),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          color: Color.fromARGB(
                                              255, 182, 182, 182),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 30, 35, 66),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 158, 158, 158),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // bootom bar
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 203, 25, 13),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 80.0,
            child: Center(
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
