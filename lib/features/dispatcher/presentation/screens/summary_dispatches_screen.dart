import 'package:flutter/material.dart';

class SummaryDispatchesScreen extends StatelessWidget {
  const SummaryDispatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('סיכום סידורים')),
      body: const Center(child: Text('כאן תופיע רשימת הסידורים')),
    );
  }
}
