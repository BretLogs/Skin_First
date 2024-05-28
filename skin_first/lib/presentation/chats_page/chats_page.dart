import 'package:flutter/material.dart';
import 'package:skin_first/presentation/chats_page/widgets/chats_page_chat.dart';
import 'package:skin_first/presentation/chats_page/widgets/chats_page_chat_unopened.dart';
import 'package:skin_first/presentation/home_page/widgets/home_bottom_nav_bar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Messages'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ChatsPageChat(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChat(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
            ChatsPageChatUnopened(),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
    );
  }
}