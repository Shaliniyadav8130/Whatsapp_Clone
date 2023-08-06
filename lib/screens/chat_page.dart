import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/screens/chat_detail_page.dart';

//List of all conversations

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context, i) => Column(
              children: [

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(
                        chatData[i].avatar ?? 'assets/images/default1.jpg'),
                  ),
                  title: Text(
                    chatData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    chatData[i].message,
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  trailing: Text(
                    chatData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  onTap: () {
                    print('Chat Detail Open');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatDetailPage(
                          name: chatData[i].name,
                          avatar: chatData[i].avatar ?? 'assets/images/default1.jpg',
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10,right:10),
            child:Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff075e54),
                  borderRadius: BorderRadius.circular(15), // Add border radius
                ),
                child: Center(
                  child: IconButton(
                      icon: Icon(Icons.message_rounded,color: Colors.white,),
                      onPressed: () {
                        print('Message Button Clicked');
                      }),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
