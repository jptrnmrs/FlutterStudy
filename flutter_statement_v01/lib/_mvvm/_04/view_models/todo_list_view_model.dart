import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todo_item.dart';

// 1. 뷰 모델을 사용하고 있다.
// 2. 뷰 모델에 날개를 달아주자 (riverpod 상태 관리 기능 추가)
// 3. 우리의 규칙 뷰 모델 - 창고 역할도 한다.
// 4. get, set 사용하지 말자
class TodoListViewModel extends Notifier<List<TodoItem>> {
  // List<TodoItem> _items = [];

  @override
  List<TodoItem> build() {
    return [];
  }

  // 비즈니스 로직
  void addItem(String title) {
    state = [...state, TodoItem(title: title)];
  }

  // 난이도 업
  // 상태 관리를 다룰 때 불변 객체와 가변 객체란?
  // state는 불변 객체를 새로 만들어 넣어야한다.
  // 1단계 코드 - 불변 객체 할당
  // void toggleItem(TodoItem todo) {
  //   state = [
  //     for (final item in state)
  //       if (item == todo)
  //         TodoItem(title: item.title, isDone: !item.isDone)
  //       else
  //         item
  //   ];
  // }

  // 2단계 코드
  void toggleItem(TodoItem todo) {
    state = state
        .map(
          (item) => item == todo ? item.copyWith(isDone: !item.isDone) : item,
        )
        .toList();
  }

  /// 불변석 원칙 위배 (버그 위험 증가)
  /// 기존 리스트의 참조를 유지한 채, 리스트 안에 특정 객체의 속성을 직접 수정하는 것
  /// flutter 상태 관리에서는 가변 객체 대신 불변 객체를 사용한다.
} // end of TodoListViewModel

// 3. 창고 관리자를 만들고
final todoListViewModelProvider =
    NotifierProvider<TodoListViewModel, List<TodoItem>>(
  () {
    return TodoListViewModel();
  },
);
