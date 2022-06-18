import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //my messages->card
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
          );
        }
        //sender messagaes->card
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
        );
      },
    );
  }
}
