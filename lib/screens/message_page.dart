import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    showNip: false,
  );
  static const styleReceiver = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: const Color.fromRGBO(225, 255, 199, 1),
    showNip: false,
  );
  ScrollController _myController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myController,
      children: [
        SizedBox(
          height:5,
        ),
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello,', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('I am good'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('What about you?'),
        ),
        // *********************
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: const Text('I am also good', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Kya tum college jaogi?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text("Let's see"),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Abhi kuch spcha nahi hai'),
        ),
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: const Text('Okay', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Did you complete your assignment?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Yupp'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('I completed'),
        ),
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: const Text('Good Good', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('okay', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('kya tum shaam '),
        ),
        Bubble(
          style: styleSender,
          child: const Text('ko free ho ?'),
        ),
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: const Text('Hmm', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Kya hua ', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: const Text('Kuch nahi soch rahi thi'),
        ),
        Bubble(
          style: styleSender,
          child: const Text('kahi chalte hai'),
        ),
        // *****************
      ],
    );
  }
}