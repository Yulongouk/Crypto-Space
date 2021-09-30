// ignore_for_file: constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationProvider = StateNotifierProvider((ref) => NavigationNotifier());

enum NavigationBarEvent { HOME, ANALYZE, NEWS, ACADEMY, SETTINGS }

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.HOME, 0);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = PageModel(NavigationBarEvent.HOME, i);
        break;
      case 1:
        state = PageModel(NavigationBarEvent.ANALYZE, i);
        break;
      case 2:
        state = PageModel(NavigationBarEvent.NEWS, i);
        break;
      case 3:
        state = PageModel(NavigationBarEvent.ACADEMY, i);
        break;
      case 4:
        state = PageModel(NavigationBarEvent.SETTINGS, i);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page, this.index);
  final NavigationBarEvent page;
  final index;
}
