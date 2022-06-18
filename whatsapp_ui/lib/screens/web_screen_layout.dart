import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';
import 'package:whatsapp_ui/widgets/web/web_message_input.dart';
import 'package:whatsapp_ui/widgets/web/web_profile_bar.dart';

import '../widgets/web/web_chat_app_bar.dart';
import '../widgets/web/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                //message input box
                WebMessageInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
