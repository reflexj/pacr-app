import 'package:flutter/material.dart';
import '../../../core/constants/app_text_styles.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PACR', style: AppTextStyles.headlineMedium)),
      body: const Center(
        child: Text('Session feed — Phase 6'),
      ),
    );
  }
}
