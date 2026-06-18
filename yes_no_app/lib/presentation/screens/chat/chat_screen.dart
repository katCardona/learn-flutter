import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entitites/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_menssage_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://images.meme-arsenal.com/02ed5308c4798d2d36fd878be57f0ed5.jpg'),
          ),
          
        ),
        title: Text('Dueño de mi calzón <3'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  
                  return ( message.fromWho == FromWho.his)
                      ? HisMessageBubble(message: message)
                      : MyMessageBubble(message : message);
                })),
            ///caja de texto de mensajes
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            ),
        
        
          ],
        ),
      ),
    );
  }
}