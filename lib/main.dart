import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() { // main스레드는 runApp 을 실행시키고 종료됩니다.
  runApp(FirstApp());
print("main 쓰레드 종료");
// sleep(Duration(seconds: 3));
}
void _callAPI() async {
  final url = Uri.parse('http://10.0.2.2:8080/test');

  Map data = {"name": "name", "id": "12"};

  var body = json.encode(data);
  final response = await http.post(url,
      headers: {
        "Content-Type": "application/json",
      },
      body: body);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
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
          body: Center(
            child: ElevatedButton(
              onPressed: _callAPI,
              child: const Text('Call API'),
            ),

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
