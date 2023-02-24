import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageTile extends StatefulWidget {
  final String message;
  final String sender;
  final bool sendByMe;
  const MessageTile(
      {super.key,
      required this.message,
      required this.sendByMe,
      required this.sender});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 4,
          bottom: 4,
          left: widget.sendByMe ? 0 : 24,
          right: widget.sendByMe ? 24 : 0),
      alignment: widget.sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding:
            const EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
        margin: widget.sendByMe
            ? const EdgeInsets.only(left: 30)
            : const EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
            borderRadius: widget.sendByMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
            color: widget.sendByMe ? Color(0xFFee7b64) : Colors.grey[700]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.sender.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: -0.5),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
