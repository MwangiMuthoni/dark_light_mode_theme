import 'package:darklight_theme/components/Box.dart';
import 'package:darklight_theme/components/Button.dart';
import 'package:darklight_theme/theme/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
              color: Theme.of(context).colorScheme.secondary, onTap: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          }),
        ),
      ),
    );
  }
}
