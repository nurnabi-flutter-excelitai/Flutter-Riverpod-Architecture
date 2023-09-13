



import 'package:flutter_project/features/counter/presentation/providers/state/counter_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider((ref) => CounterNotifier());
final titleText = Provider((ref) => 'You have pushed the button this many times:');