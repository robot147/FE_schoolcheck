import 'package:flutter/material.dart';
import 'package:flutter_application_1/design_system/buttons/button.dart';
import 'package:flutter_application_1/design_system/color/color.dart';
import 'package:flutter_application_1/model/management_data.dart';
import 'package:flutter_application_1/view/home/home_page_layout.dart';
import 'package:flutter_application_1/view/home/management_page/management_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ManagementPage extends ConsumerWidget {
  const ManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HomePageLayout(
      appbarWidget: AppBar(title: const Text('관리')),
      contentsWidget: contentsWidget(context, ref),
    );
  }
}

//
Widget contentsWidget(BuildContext context, WidgetRef ref) {
  final state = ref.watch(managementPageProvider);
  final notifier = ref.read(managementPageProvider.notifier);
  return state.when(
    data: (data) {
      // 데이터 유형에 따라 위젯 분기
      if (data is ScheduleManagementData) return scheduleWidget(context, ref);
      if (data is ClassManagementData) return classWidget(context, ref);
      if (data is EmptyManagementData) {
        return emptyWidget(context, ref);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    },
    error: (error, stackTrace) => Text('error $error'),
    loading: () => const Text('로딩'),
  );
}

// 시간표 관리 페이지
Widget scheduleWidget(BuildContext context, WidgetRef ref) {
  // 해당 페이지에서 랜더링을 다시 할게 아니기 때문에 ref.read로 불러옵니다.
  final state = ref.read(managementPageProvider);
  final notifier = ref.read(managementPageProvider.notifier);

  return state.when(
    data: (data) {
      // data 캐스팅
      data as ScheduleManagementData;
      return Container(
        color: SCColors.color_grey_00,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    SCButton.rectangle_secondary(
                      title: '학반관리',
                      onPressed: () {
                        notifier.setClassroomManagementData();
                      },
                    ),
                    const SizedBox(width: 10.0),
                    SCButton.rectangle_primary(
                      title: '시간표 관리',
                      onPressed: () {
                        notifier.setScheduleManagementData();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(),
                  ),
                  child: const Text('시간표 관리 페이지'),
                ),
              ),
            ],
          ),
        ),
      );
    },
    error: (error, stackTrace) => Text('error $error'),
    loading: () => const Text('로딩'),
  );
}

// 학반 관리 페이지
Widget classWidget(BuildContext context, WidgetRef ref) {
  final state = ref.read(managementPageProvider);
  final notifier = ref.read(managementPageProvider.notifier);
  return state.when(
    data: (data) {
      // data 캐스팅
      data as ClassManagementData;
      return Container(
        color: SCColors.color_grey_00,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    SCButton.rectangle_primary(
                      title: '학반관리',
                      onPressed: () {
                        notifier.setClassroomManagementData();
                      },
                    ),
                    const SizedBox(width: 10.0),
                    SCButton.rectangle_secondary(
                      title: '시간표 관리',
                      onPressed: () {
                        notifier.setScheduleManagementData();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(),
                  ),
                  child: const Text('학반 관리 페이지'),
                ),
              ),
            ],
          ),
        ),
      );
    },
    error: (error, stackTrace) => Text('error $error'),
    loading: () => const Text('로딩'),
  );
}

// 데이터가 비어있을 때의 위젯
Widget emptyWidget(BuildContext context, WidgetRef ref) {
  final state = ref.read(managementPageProvider);
  final notifier = ref.read(managementPageProvider.notifier);

  return state.when(
    data: (data) {
      return Container(
        color: SCColors.color_grey_00,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    SCButton.rectangle_primary(
                      title: '학반관리',
                      onPressed: () {
                        notifier.setClassroomManagementData();
                      },
                    ),
                    const SizedBox(width: 10.0),
                    SCButton.rectangle_secondary(
                      title: '시간표 관리',
                      onPressed: () {
                        notifier.setScheduleManagementData();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
    error: (error, stackTrace) => Text('error $error'),
    loading: () => const Text('로딩'),
  );
}

// 메뉴 버튼 위젯
// class MenuButtons extends ConsumerWidget {
//   const MenuButtons({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     ref.watch(managementPageProvider);
//     return Row(
//       children: [
//         SCButton.rectangle_primary(
//           title: '학반관리',
//           onPressed: () {},
//         ),
//         SizedBox(width: 10.0),
//         SCButton.rectangle_secondary(
//           title: '시간표 관리',
//           onPressed: () {},
//         ),
//       ],
//     );
//   }
// }
