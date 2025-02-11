import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RecepitScreen extends StatefulWidget {
  const RecepitScreen({super.key});

  @override
  State<RecepitScreen> createState() => _RecepitScreenState();
}

class _RecepitScreenState extends State<RecepitScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Recepit Page'),
    );
  }
}
