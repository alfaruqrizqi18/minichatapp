import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/cosmo_adaptive_progress_indicator.dart';
import '../../../injection.dart';
import '../models/chat_model.dart';
import 'chat_bubble_widget.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    super.key,
    required this.messageFocus,
    required this.scrollController,
  });

  final FocusNode messageFocus;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          messageFocus.unfocus();
        },
        child: StreamBuilder(
          stream:
              AppInjections().injection
                  .get<FirebaseFirestore>()
                  .collection('chats')
                  .orderBy('createdAt', descending: true)
                  .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CosmoProgressIndicator());
            }
            final chatDocs = snapshot.data!.docs;

            return ListView.builder(
              itemCount: chatDocs.length,
              controller: scrollController,
              reverse: true,
              itemBuilder: (context, index) {
                final chat = chatDocs[index].data();
                return ChatBubbleWidget(chat: ChatModel.fromMap(chat));
              },
            );
          },
        ),
      ),
    );
  }
}
