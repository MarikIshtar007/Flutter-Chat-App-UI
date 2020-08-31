import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatScreen(
                              user: chats[index].sender,
                            )));
              },
              child: Container(
                margin:
                    const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: chats[index].unread ? Color(0xFFFFEFEE) : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage(chats[index].sender.imageUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chats[index].sender.name,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text(
                                chats[index].text,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueGrey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          chats[index].time,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        chats[index].unread
                            ? Container(
                                width: 40,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              )
                            : Text(''),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
