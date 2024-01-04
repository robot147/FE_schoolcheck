import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router_path.dart';
import 'package:flutter_application_1/view/home/home_page.dart';
import 'package:flutter_application_1/view/home/member_page/member_page.dart';
import 'package:flutter_application_1/view/login/login_page.dart';
import 'package:flutter_application_1/view/login/login_ui_jh.dart';
import 'package:flutter_application_1/view/splash_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../view/todo/todo.dart';

//화면전환
Widget fadeTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    FadeTransition(opacity: animation, child: child);

Widget slideTransition(context, animation, secondaryAnimation, child) =>
    SlideTransition(
      position: animation.drive(
        Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOutQuart)),
      ),
      child: child,
    );

//route
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        /// splash
        GoRoute(
          path: RouterPath.splash.path,
          name: RouterPath.splash.name,
          builder: (context, state) => const SplashPage(),
        ),

        /// login
        GoRoute(
          path: RouterPath.login.path,
          name: RouterPath.login.name,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const LoginPage(),
            transitionsBuilder: fadeTransition,
          ),
        ),

        /// home
        GoRoute(
          path: RouterPath.home.path,
          name: RouterPath.home.name,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            transitionDuration: const Duration(seconds: 1),
            key: state.pageKey,
            child: const HomePage(),
            transitionsBuilder: fadeTransition,
          ),
          routes: [
            ///HOME 하위라우팅
            /// home/member_page/:memberId
            GoRoute(
              path: RouterPath.memberPage.path,
              name: RouterPath.memberPage.name,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                transitionDuration: const Duration(milliseconds: 500),
                key: state.pageKey,
                child: MemberPage(
                  memberId: state.pathParameters['memberId'] ?? '',
                ),
                transitionsBuilder: slideTransition,
              ),
            ),
             GoRoute(
              path: RouterPath.todo.path,
              name: RouterPath.todo.name,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                transitionDuration: const Duration(milliseconds: 500),
                key: state.pageKey,
                child: Todo(
                ),
                transitionsBuilder: slideTransition,
              ),
            ),
            GoRoute(
              path: RouterPath.loginui.path,
              name: RouterPath.loginui.name,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                transitionDuration: const Duration(milliseconds: 500),
                key: state.pageKey,
                child: LoginUi(
                ),
                transitionsBuilder: slideTransition,
              ),
            ),
          ],
        ),
      ],
    );
  },
);
