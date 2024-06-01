import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:skin_first/presentation/buttons/icon_button_primary.dart';
import 'package:skin_first/presentation/buttons/icon_button_tertiary.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:skin_first/presentation/chats_page/widgets/chats_page_chat_unopened.dart';
import 'package:skin_first/presentation/chats_page/widgets/chats_page_message_sent.dart';

class ChatsPageMessage extends StatefulWidget {
  const ChatsPageMessage({super.key});

  @override
  State<ChatsPageMessage> createState() => _ChatsPageMessageState();
}

class _ChatsPageMessageState extends State<ChatsPageMessage> {
  @override
  Widget build(BuildContext context) {
    List<types.Message> messages = <types.Message>[];
    types.User user = const types.User(
      id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
    );
    void addMessage(types.Message message) {
      setState(() {
        messages.insert(0, message);
      });
    }

    void handleSendPressed(types.PartialText message) {
      final types.TextMessage textMessage = types.TextMessage(
        author: user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'id',
        text: message.text,
      );

      addMessage(textMessage);
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Israel Breta'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
              icon: const Icon(
                Icons.phone_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
              icon: const Icon(Icons.video_camera_front_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Chat(
        messages: messages,
        onSendPressed: handleSendPressed,
        user: user,
        dateIsUtc: true,
        customBottomWidget: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          color: const Color(0xffCAD6FF),
          child: Row(
            children: <Widget>[
              IconButtonPrimary(onPressed: () {}, icon: Icons.menu),
              const Expanded(
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Write here...',
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
              ),
              IconButtonTertiary(
                  onPressed: () {
                    handleSendPressed(
                      const types.PartialText(text: 'text'),
                    );
                  },
                  icon: Icons.send_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
