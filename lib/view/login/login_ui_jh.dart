import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginUi extends ConsumerWidget {
  LoginUi({super.key});
  bool _isChecked = false;

  TextEditingController idInputController = TextEditingController();
  TextEditingController pwInputController = TextEditingController();

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Widget _inputArea(
    TextEditingController inputController,
    BuildContext context,
    String? hint,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      height: 45,
      child: TextField(
          controller: inputController,
          decoration: InputDecoration(
              hintText: hint ?? "",
              helperStyle: const TextStyle(color: Colors.black),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )))),
    );
  }

  Widget _greyBtn(String title, double width, double height, Function()? onTap) {
    return SizedBox(
        height: height,
        width: width,
        child: TextButton(
          onPressed: onTap,
          
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 222, 222, 222))),
                  child: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }

  Widget _infBtn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  // id 찾기 이동
                },
                child: const Text("ID 찾기")),
            const Text(" / "),
            GestureDetector(
                onTap: () {
                  // pw 찾기 이동
                },
                child: const Text("password 찾기"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  // _isChecked = value!; // 나중 riverpod 결합 후 구현
                }),
            const Text("자동로그인"),
            const Text(" / "),
            const Text("ID 저장")
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        unfocusKeyboard(); // 화면 빈 곳 터치하면 키보드 내려가기
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false, // 키보드 올라왔을 때 오버플로우 없이 그냥 덮기
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // 임시 이미지
              Image.network(
                "https://www.newskr.kr/news/photo/202310/93486_82115_315.jpg",
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _inputArea(idInputController, context, "id"),
                    const SizedBox(
                      height: 15,
                    ),
                    _inputArea(pwInputController, context, "pw"),
                    const SizedBox(
                      height: 25,
                    ),
                    _greyBtn(
                        "로그인", MediaQuery.of(context).size.width * 0.20, 45,(){}),
                    const SizedBox(
                      height: 15,
                    ),
                    _infBtn(),
                    const SizedBox(
                      height: 25,
                    ),
                    _greyBtn(
                        "회원가입", MediaQuery.of(context).size.width * 0.20, 45,(){}),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _greyBtn("구글",
                            MediaQuery.of(context).size.width * 0.045, 40,(){}),
                        const SizedBox(
                          width: 8,
                        ),
                        _greyBtn("카카오",
                            MediaQuery.of(context).size.width * 0.045, 40,(){}),
                        const SizedBox(
                          width: 8,
                        ),
                        _greyBtn("네이버",
                            MediaQuery.of(context).size.width * 0.045, 40,(){}),
                        const SizedBox(
                          width: 8,
                        ),
                        _greyBtn(
                            "애플", MediaQuery.of(context).size.width * 0.045, 40,(){})
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
