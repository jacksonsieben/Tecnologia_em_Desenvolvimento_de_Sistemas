import 'package:flutter/cupertino.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier(0));

  int get count => notifier!.value;

  static HomeController of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  increment() {
    notifier!.value++;
  }
}
