import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/theme_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        context.watch<ThemeBloc>().state.themeMode == ThemeMode.dark;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Dark Mode', style: TextStyle(fontSize: 24)),
          const SizedBox(width: 20),
          Switch(
            value: isDarkMode,
            onChanged: (_) => context.read<ThemeBloc>().add(ToggleTheme()),
          ),
        ],
      ),
    );
  }
}
