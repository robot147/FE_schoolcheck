import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoListProvider = StateNotifierProvider<TodoList, List<String>>((ref) {
  return TodoList();
});

class TodoList extends StateNotifier<List<String>> {
  TodoList() : super([]);

  void add(String item) {
    print("state : $state");
    state = [...state, item]; 
  }

  void remove(String item) {
    // 모델에 투두 데이터를 구분하는 key가 없기 때문에 현재는 같은 내용이 다 삭제되게 되어있음.
    state = state.where((element) => element != item).toList();
  }
 
}
