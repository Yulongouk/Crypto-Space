part of 'bottom_navigationbar_bloc.dart';

abstract class BottomNavigationbarState extends Equatable {
  const BottomNavigationbarState();

  
}

class HomeScreenState extends BottomNavigationbarState {
  final int index = 0;
  @override
  List<Object> get props => [index];
}

class AnalyzeScreenState extends BottomNavigationbarState {
  final int index = 1;
  @override
  List<Object> get props => [index];
}

class NewsScreenState extends BottomNavigationbarState {
  final int index = 2;
  @override
  List<Object> get props => [index];
}

class AcademyScreenState extends BottomNavigationbarState {
  final int index = 3;
  @override
  List<Object> get props => [index];
}

class AccountScreenState extends BottomNavigationbarState {
  final int index = 4;
  @override
  List<Object> get props => [index];
}
