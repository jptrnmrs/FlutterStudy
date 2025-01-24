import 'package:flutter_riverpod/flutter_riverpod.dart';

class Todo {
  final bool isCompleted;
  final String description;

  Todo({required this.isCompleted, required this.description});

  @override
  String toString() {
    return 'Todo{isCompleted: $isCompleted, description: $description}';
  }
}

// 코드를 분리하는 습관은 좋지만 너무 분리하면 과할 수 있음
// 우리들의 규칙. 모델 클래스에서 provider를 함께 선언해서 파일 개수 줄이기.


/// provider = 제공자
/// 비유 : 창고 관리자(1회용) -
final todoProvider = Provider<Todo>(
  (ref) => Todo(isCompleted: true, description: '상태 관리 배우기'),
);
