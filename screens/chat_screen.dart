import 'package:flutter/material.dart';
import '../widgets/message_bubble.dart';


class ChatScreen extends StatelessWidget {
const ChatScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("AI Chatbot (Coming Soon)"),
backgroundColor: Colors.black87,
),
body: Column(
children: [
Expanded(
child: ListView(
padding: const EdgeInsets.all(10),
children: const [
MessageBubble(message: "Hi, I'm your AI chatbot!", isUser: false),
MessageBubble(message: "AI features coming soon...", isUser: false),
],
),
),
Container(
padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
child: Row(
children: [
Expanded(
child: TextField(
decoration: InputDecoration(
hintText: "Type a message...",
filled: true,
fillColor: Colors.white10,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
borderSide: BorderSide.none,
),
),
),
),
const SizedBox(width: 10),
Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.white10,
borderRadius: BorderRadius.circular(12),
),
child: const Icon(Icons.send),
)
],
),
),
],
),
);
}
}
