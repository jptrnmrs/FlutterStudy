import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 통신을 담당하는 클라이언트 측 객체를 가져오자
  Dio _dio = Dio();

  // 모델링한 타입 추가
  Todo? _todo;

  @override
  void initState() {
    super.initState();
    // 객체 실행시 한 번 호출 메서드
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _todo == null
          ? CircularProgressIndicator()
          : Column(
              children: [
                Text('ID : ${_todo!.id}'),
                Text('USER ID : ${_todo!.userId}'),
                Text('TITLE : ${_todo!.title}'),
                Text('COMPLETED : ${_todo!.completed}'),
              ],
            ),
    );
  }

  _fetchTodos() async {
    // https://jsonplaceholder.typicode.com/todos/1
    // 통신을 담당하는 코드는 기본적으로 예외처리를 꼭 넣자

    try {
      Response response =
          await _dio.get("https://jsonplaceholder.typicode.com/todos/2");
      // 멤버 변수에 값을 담는다
      setState(() {
        _todo = Todo.fromJson(response.data);
      });
    } catch (e) {
      print('런타임 오류가 발생했습니다.');
      print(e.toString());
    }
  }
}

// dart
class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  // dart 생성자 -> 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
