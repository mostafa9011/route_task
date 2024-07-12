import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../favorite/presentation/pages/favorite_view.dart';
import '../../../home/presentation/pages/home_view.dart';
import '../../../products/presentation/pages/products_view.dart';
import '../../../profile/presentation/pages/profile_view.dart';
part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  var widgets = <Widget>[
    const HomeView(),
    const ProductsView(),
    const FavoriteView(),
    const ProfileView(),
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  changeBottomNavBarIndex(int v) {
    _currentIndex = v;

    switch (v) {
      case 0:
        emit(LayoutInitial());
        break;
      case 1:
        emit(ChangeCurrentBottomNavBarIndex1());
        break;
      case 2:
        emit(ChangeCurrentBottomNavBarIndex2());
        break;
      case 3:
        emit(ChangeCurrentBottomNavBarIndex3());
        break;
      default:
        emit(LayoutInitial());
        break;
    }
  }
}
