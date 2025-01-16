import 'package:class_carrot_app/carrot_market_ui_05/models/chat_msg.dart';
import 'package:class_carrot_app/carrot_market_ui_05/screens/components/image_container.dart';
import 'package:class_carrot_app/carrot_market_ui_05/theme.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    print(chatMessage.toString());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 20),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: Row(
          children: [
            ImageContainer(
              borderRadius: 25.0,
              imageUrl: chatMessage.profileImage,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${chatMessage.sender}",
                        style: textTheme().bodyLarge,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text("${chatMessage.location} · ${chatMessage.sendDate}")
                    ],
                  ),
                  Text(
                    "${chatMessage.message}",
                    style: textTheme().bodyLarge,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
              const SizedBox(width: 12.0,),
              Visibility(
                visible: chatMessage.imageUri != null,
                child: ImageContainer(
                  borderRadius: 10.0,
                  imageUrl: chatMessage.imageUri?? ' ' ,
                  width: 50,
                  height: 50,
                ),
              )
          ],
        ),
      ),
    );
  }
}
