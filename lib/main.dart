import 'dart:io';

import 'package:flutter/material.dart';
void main() { // main스레드는 runApp 을 실행시키고 종료됩니다.
  runApp(FirstApp());
print("main 쓰레드 종료");
// sleep(Duration(seconds: 3));
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.orange,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
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
