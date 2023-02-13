import 'package:flutter/material.dart';
import 'package:meals_app_flutter/widgets/main_drawer.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: const Center(
        child: Text('Filters'),
      ),
      drawer: const MainDrawer(),
    );
  }
}
