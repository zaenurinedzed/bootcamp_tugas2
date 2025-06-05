import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class ThemeEvent {}

class ToggleTheme extends ThemeEvent {}

// State
class ThemeState {
  final ThemeMode themeMode;

  ThemeState({required this.themeMode});
}

// BLoC
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeMode: ThemeMode.light)) {
    on<ToggleTheme>((event, emit) {
      final newTheme = state.themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
      emit(ThemeState(themeMode: newTheme));
    });
  }
}
