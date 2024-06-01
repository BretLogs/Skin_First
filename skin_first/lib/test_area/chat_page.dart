import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/buttons/icon_button_secondary.dart';
import 'package:skin_first/presentation/buttons/icon_button_tertiary.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> messages = <types.Message>[];
  types.User user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
  void _addMessage(types.Message message) {
    setState(() {
      messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final types.TextMessage textMessage = types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'id',
      text: message.text,
    );

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Israel Breta'),
        ),
        body: Chat(
          messages: messages,
          onSendPressed: _handleSendPressed,
          user: user,
          dateIsUtc: true,
          emptyState: const Center(
            child: Text('No Messages!'),
          ),
        ),
      ),
    );
  }
}
