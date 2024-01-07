import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //AFTER
          Center(
            child: SCButton.capsule_primary(
              title: '로그인',
              onPressed: () {
                route.go(RouterPath.home.path);
              },
            ),
          ),
          OutlinedButton(
              // style: const ButtonStyle(
              //   backgroundColor: MaterialStatePropertyAll(Colors.white),
              // ),
              onPressed: () {
                route.pushNamed(RouterPath.loginui.name);
              },
              child: const Text(
                'LoginUI',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                ),
              )),
          // OutlinedButton(
          //     style: const ButtonStyle(
          //       backgroundColor: MaterialStatePropertyAll(Colors.white),
          //     ),
          //     onPressed: () {
          //       route.pushNamed(RouterPath.todo.name);
          //     },
          //     child: Text(
          //       'very very simple todo',
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 36,
          //       ),
          //     )),
              
        ],
      ),
    );
  }
}
