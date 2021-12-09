class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Aditya",
    message: "Hello ji",
    time: "22:20",
    avatar: "",
  ),
  ChatModel(
    name: "Ravi",
    message: "Hello ji",
    time: "22:00",
    avatar: "",
  ),
  ChatModel(
    name: "Amit",
    message: "Hello ji",
    time: "22:10",
    avatar: "",
  ),
  ChatModel(
    name: "Anup",
    message: "Hello ji",
    time: "21:20",
    avatar: "",
  ),
  ChatModel(
    name: "Shubham",
    message: "Hello ji",
    time: "22:20",
    avatar: "",
  ),
  ChatModel(
    name: "Tenzin",
    message: "Hello ji",
    time: "20:20",
    avatar: "",
  )
];
