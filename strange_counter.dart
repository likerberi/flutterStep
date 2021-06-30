import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Hello world!');
final counterProvider = StateProvider((ref) => 0);
//final counterProvider = StateProvider((ref) => 0); // for testWidget
void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    int counter = ref.watch(counterProvider).state;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(value)),
            body: Center(
              child: InkWell(
                  onTap: () => ref.watch(counterProvider).state++,
                  child: Text('$counter')),
            )));
  }
}
