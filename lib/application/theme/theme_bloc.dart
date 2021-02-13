import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uber_clone/theme.dart';

part 'theme_event.dart';
part 'theme_bloc.freezed.dart';

@Injectable()
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(lightTheme);

  @override
  Stream<ThemeData> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      darkThemeRequested: (e) async* {
        yield darkTheme;  
      },
      lightThemeRequested: (e) async* {
        yield lightTheme; 
      },
    );
  }

  @override
  ThemeData fromJson(Map<String, dynamic> json) {
    try {
      if (json['light'] as bool) {
        return ThemeData.light();
      }
      return ThemeData.dark();
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, bool> toJson(ThemeData state) {
    try {
      return {'light': state != ThemeData.light()};
    } catch (_) {
      return null;
    }
  }
}
