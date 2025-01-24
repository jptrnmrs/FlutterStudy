import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todo_item.dart';
import '../view_models/todo_list_view_model.dart';


class TodoListView extends ConsumerWidget {
  // 상태 관리 --> 동기롸 (공유 데이터를 여러 화면에서 동일한 값을 보장)
  // 의존성 관리

  TodoListView({super.key});

  final TextEditingController _controller = TextEditingController();
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    // todoItem 객체는 상태가 있다 -- 즉 변수가 변화할 가능성이 있다
    // todos --> List<TodoItem> <-- 계속 감시중
    final todos = ref.watch(todoListViewModelProvider);
    // 창고에 직접 접근
    // todoNotifer --> 뷰 모델
    final todoNotifier = ref.read(todoListViewModelProvider.notifier);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.circle, size: 5,),
                hintText: 'Enter todo item...',
                suffixIcon: IconButton(onPressed: (){
                  // 추가 로직 넣을 예정
                  todoNotifier.addItem(_controller.text);
                  // 입력 필드 비우기
                  _controller.clear();
                }, icon: Icon(Icons.add))
            ),
          ),
        ),
        SizedBox(height: 16.0,),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final TodoItem item = todos[index];
              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(value: item.isDone, onChanged: (value) {
                  todoNotifier.toggleItem(item);
                } ,),
              );
            },),
        )
      ],
    );
  }
}

