import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo_provider.dart';

class Todo extends ConsumerWidget {
  Todo({super.key});

  TextEditingController inputTodo = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoListProvider);

    ref.listen(todoListProvider, (prev, next) {
      print("현재상태 : $prev , $next");
    });

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Todo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        controller: inputTodo,
                        decoration: InputDecoration(border: InputBorder.none),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        ref.read(todoListProvider.notifier).add(inputTodo.text);
                        inputTodo.clear();
                      },
                      child: Text("추가",style: TextStyle(color: Colors.black),))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ...List.generate(
                  todo.length,
                  (index) => Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Text(
                              todo[index],
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                ref
                                    .watch(todoListProvider.notifier)
                                    .remove(todo[index]);
                              },
                              child: Text("삭제"))
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
