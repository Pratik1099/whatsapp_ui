import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class MobileMessageInput extends StatelessWidget {
  const MobileMessageInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: const BoxDecoration(
              color: mobileChatBoxColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.emoji_emotions_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.currency_rupee_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: () {},
          child: const Icon(
            Icons.mic,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
