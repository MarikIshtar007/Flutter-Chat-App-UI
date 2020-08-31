import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class BuildMessage extends StatefulWidget {
  final Message message;
  final bool isMe;

  BuildMessage({Key key, this.message, this.isMe});

  @override
  _BuildMessageState createState() => _BuildMessageState();
}

class _BuildMessageState extends State<BuildMessage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  bool _isLiked;
  var _animatedSize;

  @override
  void initState() {
    super.initState();
    setIsMe();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
  }

  void setIsMe() {
    _isLiked = widget.message.isLiked;
    _animatedSize = widget.message.isLiked ? 30.0 : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    BorderRadius _borderRadius = widget.isMe
        ? BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )
        : BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          );

    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: widget.isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
          : EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: widget.isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: _borderRadius,
      ),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.message.time,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            widget.message.text,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );

    if (widget.isMe) {
      return msg;
    }
    return Row(
      children: [
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              _isLiked = !_isLiked;
              if (_animatedSize == 30.0) {
                _animatedSize = 0.0;
              } else {
                _animatedSize = 30.0;
              }
            });
          },
          child: msg,
        ),
        SizedBox(
          width: 10,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Icon(
            _isLiked ? Icons.favorite : null,
            color: _isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
            size: _animatedSize,
          ),
        )
      ],
    );
  }
}
