import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String sessionId;
  const ChatScreen({super.key, required this.sessionId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Center(child: Text('Chat for session $sessionId — Phase 10')),
    );
  }
}
