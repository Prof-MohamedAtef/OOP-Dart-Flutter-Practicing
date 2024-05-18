import 'package:amit_training/whatsapp/chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsScreen_ extends StatelessWidget {
  const ChatsScreen_({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatsScreen(),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //x
                crossAxisAlignment: CrossAxisAlignment.center, // y
                children: [ChatRow()])));
  }
}

class ChatRow extends StatelessWidget {
  const ChatRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<Chats> chatsList = [];
    chatsList.add(Chats('assets/image/ic_profile1.jpg', "I am Mohamed Atef",
        "I am Software Engineer ...", "04:37"));
    chatsList.add(Chats('assets/image/ic_profile2.png', "Ahmed Atef",
        "I will be Waiting ...", "04:37"));
    if (chatsList == null) {
      return Scaffold();
    } else {
      if(chatsList.length == 1){
        return Scaffold();
      }else {
        for (int i = 0; i < chatsList.length; i++) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start, //x
            crossAxisAlignment: CrossAxisAlignment.center, //y
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  chatsList[i].getProfilePic(),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatsList[i].getUserName(),
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    chatsList[i].getMessage(),
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                width: 75,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatsList[i].getTime(),
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ])
            ],
          );
        }
      }
    }
    return Scaffold();
  }
}