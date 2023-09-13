


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/state/bottom_nav_bar_notifier.dart';




final bottomNavBarProvider = StateNotifierProvider<BottomNavigationBarProvider,int>((ref) {
  return BottomNavigationBarProvider();
});


class LandingPage extends ConsumerWidget {
  static const String routeName = '/landing';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavBarProvider);
    final pageWidget = ref.read(bottomNavBarProvider.notifier).getWidget(currentIndex, context);

    return Scaffold(
      drawer: Drawer(),
      body: pageWidget,
      bottomNavigationBar: ref.watch(bottomNavBarProvider.notifier).bottomNavigationBar(context, true)
    );
  }
}