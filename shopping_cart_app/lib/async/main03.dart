import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentsView(),
    );
  }
} // end of MyApp

// 부모클래스
class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
}

class _ParentsViewState extends State<ParentsView> {
  String displayText = '여기는 부모 위젯 변수야';

  void handleChildEvent(String txt){
    setState(() {
      displayText = txt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Center(child: Text(displayText))),
            Expanded(child: ChildA(onCallbackReceived: handleChildEvent)),
            Expanded(child: ChildB(onCallbackReceived: handleChildEvent))
          ],
        ),
      ),
    );
  }
}

class ChildA extends StatelessWidget {
  const ChildA({required this.onCallbackReceived, super.key});
  final Function (String) onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: (){
          print("Child A에 이벤트 발생");
          onCallbackReceived("child A에서 연산한 데이터 전달");
        },
        child: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
          child: Center(
            child: Text("CHILD A"),
          ),
        ),
      ),
    );
  }
}
class ChildB extends StatelessWidget {
  const ChildB({required this.onCallbackReceived, super.key});
  final Function (String) onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: (){
          print("Child B에 이벤트 발생");
          onCallbackReceived("child B에서 연산한 데이터 전달");
        },
        child: Container(
          color: Colors.redAccent,
          width: double.infinity,
          child: Center(
            child: Text("CHILD B"),
          ),
        ),
      ),
    );
  }
}
