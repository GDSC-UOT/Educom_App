import 'package:ed_community/core/helpers/extensions.dart';
import 'package:ed_community/core/themes/color_manager.dart';
import 'package:ed_community/core/themes/text_style_manager.dart';
import 'package:ed_community/features/messages/ui/widgets/message_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MessageChatWidget> messages = [
      const MessageChatWidget(
        title: "Dr. Ali Hassan",
        subtitle: "Hello, Mohammed",
        imageUrl: "assets/images/person.png",
        newMessages: 2,
      ),
      const MessageChatWidget(
          title: "Dr. Mustafa Ahmed",
          subtitle: "Hello, Mohammed",
          imageUrl: "assets/images/person.png",
          time: "1hr",
          read: true),
      const MessageChatWidget(
        title: "Dr. Ali Hassan",
        subtitle: "Hello, Mohammed",
        imageUrl: "assets/images/person.png",
        time: "Yesterday",
      ),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: const Icon(
          Icons.add,
          color: ColorManager.fieldColor,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Messages",
          style: TextStyleManager.medium16px.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
            gradient: ColorManager.linearGradientBackground),
        child: SafeArea(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return messages[index];
            },
            itemCount: messages.length,
          ),
        ),
      ),
    );
  }
}
