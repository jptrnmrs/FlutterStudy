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

  @override
  void initState() {
    super.initState();
    // 객체 실행시 한 번 호출 메서드
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  _fetchTodos() async {
    // https://jsonplaceholder.typicode.com/todos/1
    // 통신을 담당하는 코드는 기본적으로 예외처리를 꼭 넣자

    try {
      Response response =
          await _dio.get("https://jsonplaceholder.typicode.com/todos/1");
      print("HTTP status code : ${response.statusCode}");
      print("서버측에서 전달한 데이터 : ${response.data}");
      print("변경된 타입 : ${response.data.runtimeType}");

      // Map 타입의 값을 출력하는 방법
      print("-------------------------------------");
      print("data -> id 값 확인 : ${response.data['id']}");
      print("data -> userId 값 확인 : ${response.data['userId']}");
      print("data -> title 값 확인 : ${response.data['title']}");
      print("data -> completed 값 확인 : ${response.data['completed']}");
      print("-------------------------------------");
      // Map으로 들어온 데이터를 todo객체를 생성해 상태값을 담아보기

      Todo todo = Todo(
        userId: response.data['userId'],
        id: response.data['id'],
        title: response.data['title'],
        completed: response.data['completed'],
      );
      print(todo);

      print("-------------------------------------");
      print(Todo.fromJson(response.data));


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
