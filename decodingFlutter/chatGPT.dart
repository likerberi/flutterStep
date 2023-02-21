import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final focusNodeProvider = Provider.autoDispose<FocusNode>((ref) {
  final focusNode = FocusNode();
  ref.onDispose(() => focusNode.dispose());
  return focusNode;
});

final isFocusedProvider = FutureProvider.autoDispose<bool>((ref) async {
  final focusNode = ref.watch(focusNodeProvider);
  return focusNode.hasFocus;
});

bool useIsFocused(FocusNode node, WidgetRef context) {
  final isFocusedAsyncValue = context.read(isFocusedProvider);

  return isFocusedAsyncValue.when(
    data: (isFocused) {
      return isFocused;
    },
    loading: () => false,
    error: (_, __) => false,
  );
}
