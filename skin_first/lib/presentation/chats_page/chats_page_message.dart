import 'package:flutter/material.dart';
import 'package:skin_first/presentation/chats_page/widgets/chats_page_chat_unopened.dart';

class ChatsPageMessage extends StatelessWidget {
  const ChatsPageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          const SizedBox(width: 12),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                hintText: 'Type here...',
                hintStyle: Theme.of(context).textTheme.bodySmall,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            color: Colors.amber,
            child: const Column(children: <Widget>[
              ChatsPageChatUnopened(),
            ]),
          )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                hintText: 'Type here...',
                hintStyle: Theme.of(context).textTheme.bodySmall,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
