import 'package:flutter/material.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../core/widgets/cards/cosmo_outined_card.dart';
import '../../../core/widgets/text_fields/cosmo_text_form_field.dart';
import '../../../injection.dart';
import '../providers/chat_provider.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    super.key,
    required this.messageC,
    required this.messageFocus,
    required this.scrollC,
  });

  final TextEditingController messageC;
  final FocusNode messageFocus;
  final ScrollController scrollC;

  @override
  Widget build(BuildContext context) {
    return CosmoOutlinedCard(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Expanded(
              child: CosmoTextFormFieldWithLabelInside(
                controller: messageC,
                labelText: "Message",
                focusNode: messageFocus,
              ),
            ),
            IconButton(
              onPressed: () {
                if (messageC.text.isNotEmpty) {
                  getInjection<ChatProvider>().sendMessage(
                    message: messageC.text.toString().trim(),
                  );
                  messageC.clear();
                  messageFocus.unfocus();
                  scrollC.jumpTo(scrollC.position.minScrollExtent);
                }
              },
              icon: Icon(Icons.send_rounded, color: context.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
