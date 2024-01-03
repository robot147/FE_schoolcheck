import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'activity.dart';
import 'provider.dart';

class DocHome extends ConsumerWidget {
  const DocHome({super.key});

  @override
  // Notice how "build" now receives an extra parameter: "ref"
  
  Widget build(BuildContext context, WidgetRef ref) {
    // We can use "ref.watch" inside our widget like we did using "Consumer"
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    // The rendering logic stays the same
    return Scaffold(
      body: Center(
        
        // AsyncValue<Activity>는 Riverpod에서 제공하는 비동기 값으로, 네트워크 요청의 상태를 나타냅니다. 
        // 이 값은 AsyncData, AsyncLoading, AsyncError 등의 상태를 가질 수 있습니다.
        child: switch (activity) {
          AsyncData(:final value) => Text('Activity: ${value.activity}'),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(), // AsyncLoading
        },
      ),
    );
  }
}
