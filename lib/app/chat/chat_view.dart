import 'package:flutter/material.dart';
import 'package:garage_vendor/app/chat/chat_controller.dart';
import 'package:garage_vendor/app/chat/component/chat_card.dart';
import 'package:garage_vendor/layout/app_layout.dart';
import 'package:get/get.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
        autoRemove: false,
        builder: (controller) => AppLayout(
              appBarTitle: 'Chat',
              hasBgColor: true,
              child: Column(
                children: [
                  ChatCard(
                    name: 'sdsdfd',
                  ),
                   ChatCard(
                    name: 'sdsdfd',
                  ),
                   ChatCard(
                    name: 'sdsdfd',
                  ),
                ],
              ),
            ));
  }
}
