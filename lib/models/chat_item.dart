class ChatItem {
  final String avatarUrl;
  final String name;
  final String message;
  final DateTime date;
  final int unreadMessage;
  final ChatStatus checked;

  ChatItem(
      {this.avatarUrl,
      this.date,
      this.message,
      this.name,
      this.unreadMessage = 0,
      this.checked = ChatStatus.uncheck});

  String get lastMessagetime => '${date.hour}:${date.minute}';
  String get shortMessage => '${message.substring(0, 20)}...';
  int get unreadMessageCount => unreadMessage > 99 ? 99 : unreadMessage;
  bool get haveUnreadMessage => unreadMessage != 0;
}

enum ChatStatus {
  uncheck,
  check,
  doublecheck,
  doublegreencheck,
}
