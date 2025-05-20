import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/app_bar/app_bar_v1.dart';
import '../widgets/chat_list_widget.dart';
import '../widgets/send_message_widget.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageC = TextEditingController();
  final messageFocus = FocusNode();
  final scrollC = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CosmoAppBar(title: "Chat Room"),
      body: Column(
        children: [
          ChatListWidget(messageFocus: messageFocus, scrollController: scrollC),
          SendMessageWidget(
            messageC: messageC,
            messageFocus: messageFocus,
            scrollC: scrollC,
          ),
        ],
      ),
    );
  }
}
