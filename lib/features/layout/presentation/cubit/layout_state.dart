part of 'layout_cubit.dart';

abstract class LayoutState extends Equatable {
  const LayoutState();

  @override
  List<Object> get props => [];
}

class LayoutInitial extends LayoutState {}

class ChangeCurrentBottomNavBarIndex1 extends LayoutState {}

class ChangeCurrentBottomNavBarIndex2 extends LayoutState {}

class ChangeCurrentBottomNavBarIndex3 extends LayoutState {}
