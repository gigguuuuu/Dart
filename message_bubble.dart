import 'package:flutter/material.dart';


class MessageBubble extends StatelessWidget {
final String message;
final bool isUser;


const MessageBubble({
super.key,
required this.message,
required this.isUser,
});


@override
Widget build(BuildContext context) {
return Align(
alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
child: Container(
margin: const EdgeInsets.symmetric(vertical: 6),
padding: const EdgeInsets.all(14),
decoration: BoxDecoration(
color: isUser ? Colors.blueAccent : Colors.grey.shade800,
borderRadius: BorderRadius.circular(16),
),
child: Text(
message,
style: const TextStyle(fontSize: 16),
),
),
);
}
}
