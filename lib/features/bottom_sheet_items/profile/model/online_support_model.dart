class OnlineSupportModel {
  String title, subTitle, time;

  OnlineSupportModel({
    required this.title,
    required this.subTitle,
    required this.time,
  });
}

List<OnlineSupportModel> allActiveChats = [
  OnlineSupportModel(
      title: "support assistant",
      subTitle: "Hello! I'm here to assist you",
      time: "2 Min Ago")
];
List<OnlineSupportModel> allEndedChats = [
  OnlineSupportModel(
      title: "Help center",
      subTitle: "Your account is ready to use...",
      time: "Feb 08 -2024"),
  OnlineSupportModel(
      title: "support assistant",
      subTitle: "Hello! I'm here to assist you",
      time: "Dic 24 -2023"),
  OnlineSupportModel(
      title: "support assistant",
      subTitle: "Hello! I'm here to assist you",
      time: "Sep 10 -2023"),
  OnlineSupportModel(
      title: "Help center",
      subTitle: "Hi, how are you today? ",
      time: "June 12 -2023"),
];
