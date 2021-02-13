import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/theme/theme_bloc.dart';
import 'package:uber_clone/injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => context.read<ThemeBloc>()
              ..add(
                const ThemeEvent.darkThemeRequested(),
              ),
            child: const Text('Dark'),
          ),
          RaisedButton(
            onPressed: () => context.read<ThemeBloc>()
              ..add(
                const ThemeEvent.lightThemeRequested(),
              ),
            child: const Text('Light'),
          ),
        ],
      ),
    );
  }
}
