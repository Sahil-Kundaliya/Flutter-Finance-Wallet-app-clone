import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:flutter/material.dart';

class NotificationModel {
  NotificationModel(
      {required this.notificationTitle,
      required this.notificationSubTitle,
      this.notificationType,
      this.notificationImage,
      this.notificationIcon});

  String notificationTitle, notificationSubTitle;
  String? notificationImage, notificationType;

  IconData? notificationIcon;
}

List<NotificationModel> todayNotification = [
  NotificationModel(
      notificationTitle: "Reminder!",
      notificationSubTitle:
          "Set up your automatic savings to meet your savings goal...",
      notificationIcon: Icons.notifications_none),
  NotificationModel(
      notificationTitle: "New update",
      notificationSubTitle:
          "Set up your automatic savings to meet your savings goal...",
      notificationIcon: Icons.star_border_outlined)
];
List<NotificationModel> yesterdayNotification = [
  NotificationModel(
      notificationTitle: "Transactions",
      notificationSubTitle: "A new transaction has been registered",
      notificationType: "Groceries | pantry | -\$100,00",
      notificationIcon: Icons.attach_money),
  NotificationModel(
      notificationTitle: "Reminder!",
      notificationSubTitle:
          "Set up your automatic savings to meet your savings goal...",
      notificationIcon: Icons.notifications_none),
];
List<NotificationModel> weekendNotification = [
  NotificationModel(
      notificationTitle: "Expense record",
      notificationSubTitle:
          "We recommend that you be more attentive to your finances.",
      notificationImage: AppImages.expenseIcon),
  NotificationModel(
      notificationTitle: "Transactions",
      notificationSubTitle: "A new transaction has been registered",
      notificationType: "Food | Dinner | -\$70,40",
      notificationIcon: Icons.attach_money),
];
