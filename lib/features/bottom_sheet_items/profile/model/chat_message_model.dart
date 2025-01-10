class ChatMessageModel {
  final String message;
  final String? time;
  final bool isSender;

  ChatMessageModel({
    required this.message,
    this.time,
    required this.isSender,
  });
}

List<ChatMessageModel> allChatMessages = [
  ChatMessageModel(
      message: "Welcome, I am your virtual assistant.", isSender: false),
  ChatMessageModel(
      message: "How can I help you today?", isSender: false, time: "14:00"),
  ChatMessageModel(
      message:
          "Hello! I have a question. How can I record my expenses by date?",
      isSender: true,
      time: "14:01"),
  ChatMessageModel(
      message:
          "Response to your request:  You can register expenses in the top menu of the homepage.",
      isSender: false),
  ChatMessageModel(
      message: "Enter the purchase information, including the date, etc.",
      isSender: false,
      time: "14:03"),
  ChatMessageModel(message: "OK, thanks a lot.", isSender: true, time: "14:05"),
  ChatMessageModel(
      message: "It was a pleasure to accommodate your request. See you soon!",
      isSender: false,
      time: "14:06 | Chat Ended"),
];
