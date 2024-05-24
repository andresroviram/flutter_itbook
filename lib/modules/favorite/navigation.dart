import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/routes/cubit/router_manager.dart';

class FavoriteNavigation extends Cubit<void> {
  FavoriteNavigation({required this.navigation}) : super(null);
  late RouterManager navigation;

  void pop() {
    navigation.pop();
  }
}
