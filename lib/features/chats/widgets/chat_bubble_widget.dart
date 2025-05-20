import 'package:flutter/material.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../core/repositories/app_repository.dart';
import '../../../core/services/navigation_service.dart';
import '../../../core/utils/date_format.dart';
import '../../../core/utils/utils.dart';
import '../../../core/widgets/cards/cosmo_filled_card.dart';
import '../../../core/widgets/images/cosmo_network_image.dart';
import '../models/chat_model.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    final myChat = AppRepository.getUID() == chat.userId;
    return Row(
      mainAxisAlignment:
          myChat ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: !myChat,
          child: GestureDetector(
            onTap: () {
              openMessageDetailByClickingProfilePicture();
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              constraints: BoxConstraints(maxWidth: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CosmoNetworkImage(chat.photo),
              ),
            ),
          ),
        ),
        Flexible(
          child: CosmoFilledCard(
            backgroundColor: context.primaryColor.withValues(alpha: 0.2),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                    myChat ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.text,
                    textAlign: myChat ? TextAlign.end : TextAlign.start,
                    style: context.bodyLarge?.copyWith(
                      color: context.onSurfaceColor,
                    ),
                  ),
                  vSpace(5),
                  if (!myChat) ...[
                    Text(
                      "from ${chat.email.replaceAll('@gmail.com', '')}",
                      textAlign: myChat ? TextAlign.end : TextAlign.start,
                      style: context.bodySmall?.copyWith(
                        color: context.onSurfaceColor,
                      ),
                    ),
                    vSpace(5),
                  ],
                  Text(
                    CosmoDateFormat.basedOnFormat(
                      chat.createdAt.toDate(),
                      format: 'dd MMM yy\nHH:mm',
                    ),
                    textAlign: myChat ? TextAlign.end : TextAlign.start,
                    style: context.bodySmall?.copyWith(
                      color: context.onSurfaceColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> openMessageDetailByClickingProfilePicture() {
    return showDialog(
      context: globalCurrentContext,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth() * 0.8,
              child: CosmoFilledCard(
                child: Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 50),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CosmoNetworkImage(chat.photo),
                        ),
                      ),
                      vSpace(15),
                      Text(
                        chat.name,
                        textAlign: TextAlign.center,
                        style: context.bodyLarge,
                      ),
                      Text(
                        chat.email,
                        textAlign: TextAlign.center,
                        style: context.bodyMedium?.copyWith(
                          color: context.outlineColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            vSpace(10),
            SizedBox(
              width: screenWidth() * 0.8,
              child: CosmoFilledCard(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        chat.text,
                        textAlign: TextAlign.center,
                        style: context.bodyMedium?.copyWith(
                          color: context.onSurfaceColor,
                        ),
                      ),
                      vSpace(10),
                      Text(
                        CosmoDateFormat.dateWithTime(chat.createdAt.toDate()),
                        textAlign: TextAlign.center,
                        style: context.bodySmall?.copyWith(
                          color: context.onSurfaceColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
