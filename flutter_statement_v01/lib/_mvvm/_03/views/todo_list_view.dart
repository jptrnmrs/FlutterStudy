import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_mvvm/_02/models/todo_item.dart';
import 'package:flutter_statement_v01/_mvvm/_03/view_models/todo_list_view_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  TextEditingController _controller = TextEditingController();

  final TodoListViewModel _listViewModel = TodoListViewModel();

  @override
  Widget build(BuildContext context) {
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
                _listViewModel.addItem(_controller.text);
                setState(() {});
                // 입력 필드 비우기
                _controller.clear();
              }, icon: Icon(Icons.add))
            ),
          ),
        ),
        SizedBox(height: 16.0,),
        Expanded(
          child: ListView.builder(
            itemCount: _listViewModel.items.length,
            itemBuilder: (context, index) {
              final TodoItem item = _listViewModel.items[index];
            return ListTile(
              title: Text(item.title),
              trailing: Checkbox(value: item.isDone, onChanged: (value) {
                _listViewModel.toggleItem(item);
                setState(() {});
              } ,),
            );
          },),
        )
      ],
    );
  }
}
