import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatsPageMessageSent extends StatelessWidget {
  const ChatsPageMessageSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(80, 12, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffCAD6FF),
                  ),
                  child: const Text(
                      'In velit proident in aute sit cupidatat magna ex consequat anim incididunt cillum ad. Enim consectetur occaecat labore in pariatur. Sint minim esse cupidatat sint dolore laborum amet tempor. Velit non sunt in magna eiusmod.'),
                ),
                const Text('09:00'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
