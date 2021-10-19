import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigationbar_event.dart';
part 'bottom_navigationbar_state.dart';

class BottomNavigationbarBloc
    extends Bloc<BottomNavigationbarEvent, BottomNavigationbarState> {
  BottomNavigationbarBloc() : super(HomeScreenState());
  @override
  Stream<BottomNavigationbarState> mapEventToState(
      BottomNavigationbarEvent event) async* {
    if (event is LoadHomeScreen) {
      yield HomeScreenState();
    }
    if (event is LoadAnalyzeScreen) {
      yield AnalyzeScreenState();
    }
    if (event is LoadNewsScreen) {
      yield NewsScreenState();
    }
    if (event is LoadAcademyScreen) {
      yield AcademyScreenState();
    }
    if (event is LoadAccountScreen) {
      yield AccountScreenState();
    }
  }
}
