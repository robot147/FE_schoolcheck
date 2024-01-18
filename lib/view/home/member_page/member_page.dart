import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/text/text.dart';
import 'package:flutter_application_1/design_system/text/text_style.dart';
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
    final state = ref.watch(memberPageProvider(page: 1));

    //notifier
    final notifier = ref.read(memberPageProvider(page: 1).notifier);

    return Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
            child: const Text('홈 으로'),
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
                SCText(
                  '제목: ${data!.memberInfo.title} ',
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
                SCText(
                  '내용: ${data.memberInfo.body} ',
                  textStyle: SCTextStyle.font_14px_w400_h100,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (data.memberInfo.title != '새 제목') {
                      notifier.updateTitle(title: '새 제목');
                    }
                  },
                  child: data.memberInfo.title != '새 제목'
                      ? const Text('수정')
                      : const Text('완료'),
                ),
              ],
            );
          },
          error: (error, stackTrace) => Text('error $error'),
          loading: () => const Text('로딩'),
        ));
  }
}
