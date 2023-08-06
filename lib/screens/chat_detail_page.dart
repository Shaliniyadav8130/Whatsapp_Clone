import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/message_page.dart';
import 'package:file_picker/file_picker.dart';

//Main Chat Page

class ChatDetailPage extends StatefulWidget {
  final String name;
  final String avatar;

  ChatDetailPage({required this.name, required this.avatar});


  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {

  String _fileName = '';

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(widget.avatar),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(widget.name),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                print('Video Call Button Clicked');
              }),
          IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                print('Call Button Clicked');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed:  () {
                print('Three Dot Button Clicked');
              }),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      hintText: 'Message',
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.attach_file,color: Colors.black,),
                              onPressed: _pickFile,

                          ),
                          IconButton(
                            icon: Icon(Icons.camera_alt_rounded,color: Colors.black,),
                            onPressed: () {
                              // Handle camera icon button tap here
                            },
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8.0, // Adjust the vertical padding
                        horizontal: 16.0, // Adjust the horizontal padding
                      ),
                    ),
                  ),
                ),
                SizedBox(width:4),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff075e54),
                  ),
                  child: Center(
                    child:  IconButton(
                        icon: Icon(Icons.mic_rounded,color: Colors.white),
                        onPressed: () {
                          print('Mic Button Clicked');
                        }),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}