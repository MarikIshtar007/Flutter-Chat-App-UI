import 'package:chat_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/mitsuha.jpg');

final User andrew =
    User(id: 1, name: 'Andrew', imageUrl: 'assets/images/andrew.jpg');

final User angela =
    User(id: 2, name: 'Angela', imageUrl: 'assets/images/angela.jpeg');

final User elizabeth =
    User(id: 3, name: 'Elizabeth', imageUrl: 'assets/images/elizabeth.jpg');

final User greg = User(id: 4, name: 'Greg', imageUrl: 'assets/images/greg.jpg');

final User robin =
    User(id: 5, name: 'Robin', imageUrl: 'assets/images/robin.jpg');

final User thomas =
    User(id: 6, name: 'Thomas', imageUrl: 'assets/images/thomas.jpg');

final User janice =
    User(id: 7, name: 'Janice', imageUrl: 'assets/images/janice.jpg');

List<User> favorites = [angela, robin, thomas, elizabeth, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: andrew,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: thomas,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: elizabeth,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: janice,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: robin,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: angela,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: andrew,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andrew,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andrew,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: andrew,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
