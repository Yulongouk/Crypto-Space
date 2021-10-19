part of 'bottom_navigationbar_bloc.dart';

abstract class BottomNavigationbarEvent extends Equatable {
  const BottomNavigationbarEvent();

  @override
  List<Object> get props => [];
}

class LoadHomeScreen extends BottomNavigationbarEvent{
}

class LoadAnalyzeScreen extends BottomNavigationbarEvent{
  
}

class LoadNewsScreen extends BottomNavigationbarEvent{
  
}

class LoadAcademyScreen extends BottomNavigationbarEvent{
  
}

class LoadAccountScreen extends BottomNavigationbarEvent{
  
}