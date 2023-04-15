import 'dart:io';

import 'package:flutter/material.dart';
void main() { // main스레드는 runApp 을 실행시키고 종료됩니다.
  runApp(FirstApp());
print("main 쓰레드 종료");
sleep(Duration(seconds: 3));
}

class FirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SafeArea(
         child: Scaffold( // 기본 구조를 들고 있어요
           appBar: AppBar(
             backgroundColor: Colors.blue,
             title: Text("First App"),
             leading: Icon(Icons.menu),

           ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.indigo,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                  height: 50,
                ),
              ),
            ],
          ),
           floatingActionButton: FloatingActionButton(
             child: Text("button"),
             onPressed: (){
               print("버튼 클릭됨");
             },
           ),
bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(label: "hello",
      icon: Icon(Icons.access_alarm_rounded,)

    ),
    BottomNavigationBarItem(label: "hello",
        icon: Icon(Icons.access_alarm_rounded,)

    )

  ],
  backgroundColor: Colors.yellow,
),

      ),
       ),
    );
  }
}
