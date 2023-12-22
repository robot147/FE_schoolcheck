import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/router.dart';
import 'package:flutter_application_1/view/home/member_page/member_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemberPage extends ConsumerWidget {
  final String memberId;
  const MemberPage({
    super.key,
    required this.memberId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.read(goRouterProvider);

    //데이터
    final state = ref.watch(memberPageProvider(memberId));

    //notifier
    final notifier = ref.read(memberPageProvider(memberId).notifier);

    return Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
            child: const Text('홈으로'),
            onPressed: () {
              route.pop();
            },
          ),
        ),
        backgroundColor: Colors.amber,
        body: state.when(
          data: (data) {
            return Column(
              children: [
                Text('회원 이름 ${data!.memberInfo.name}'),
                ElevatedButton(
                  onPressed: () {
                    notifier.updateName(name: '새이름');
                  },
                  child: const Text('수정'),
                ),
              ],
            );
          },
          error: (error, stackTrace) => Text('error $error'),
          loading: () => const Text('로딩'),
        ));
  }
}
