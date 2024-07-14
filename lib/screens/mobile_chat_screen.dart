import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: dividerColor),
                ),
                color: chatBarMessage),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 15),
                    child: TextField(
                      cursorColor: tabColor,
                      decoration: InputDecoration(
                        fillColor: searchBarColor,
                        filled: true,
                        hintText: 'Type a message',
                        contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // TextField(
          //   decoration: InputDecoration(
          //     filled: true,
          //     fillColor: mobileChatBoxColor,
          //     prefixIcon: const Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 20.0),
          //       child: Icon(
          //         Icons.emoji_emotions,
          //         color: Colors.grey,
          //       ),
          //     ),
          //     suffixIcon: const Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 20.0),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Icon(
          //             Icons.camera_alt,
          //             color: Colors.grey,
          //           ),
          //           Icon(
          //             Icons.attach_file,
          //             color: Colors.grey,
          //           ),
          //           Icon(
          //             Icons.money,
          //             color: Colors.grey,
          //           ),
          //         ],
          //       ),
          //     ),
          //     hintText: 'Type a message!',
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(20.0),
          //       borderSide: const BorderSide(
          //         width: 0,
          //         style: BorderStyle.none,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
