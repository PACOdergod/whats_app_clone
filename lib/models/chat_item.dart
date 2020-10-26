class ChatItem {
  final String avatarUrl;
  final String name;
  final String message;
  final DateTime date;

  ChatItem({this.avatarUrl, this.date, this.message, this.name});

  String get lastMessagetime => '${date.hour}:${date.minute}';
  String get shortMessage => '${message.substring(0, 20)}...';
}
