import 'user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User billie = User(
  id: 1,
  name: 'Billie',
  imageUrl: 'assets/images/billie.jpg',
);
final User wail = User(
  id: 2,
  name: 'Wail',
  imageUrl: 'assets/images/wail.jpg',
);
final User kamal = User(
  id: 3,
  name: 'Kamal',
  imageUrl: 'assets/images/kamal.jpg',
);
final User kamilia = User(
  id: 4,
  name: 'Kamilia',
  imageUrl: 'assets/images/kamilia.jpg',
);
final User nicole = User(
  id: 5,
  name: 'Nicole',
  imageUrl: 'assets/images/nicole.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User tupac = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
);

List<User> favo = [nicole, tupac, kamilia, kamal, billie];

List<Message> chats = [
  Message(
    sender: wail,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kamilia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: kamal,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: tupac,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: nicole,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: billie,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: wail,
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
    sender: wail,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: wail,
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
    sender: wail,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
