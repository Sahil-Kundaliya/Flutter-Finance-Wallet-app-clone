import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactItemModel {
  final String title;
  final IconData icon;

  ContactItemModel({required this.title, required this.icon});
}

List<String> allFAQData = [
  "How to use finWise?",
  "How much does it cost to use FinWise?",
  "How to contact support?",
  "How can I reset my password if I forget it?",
  "Are there any privacy or data security measures in place?",
  "Can I customize settings within the application?",
  "How can I delete my account?",
  "How do I access my expense history?",
  "Can I use the app offline?",
];

List<ContactItemModel> allContactData = [
  ContactItemModel(title: "Customer Service", icon: Icons.support_agent),
  ContactItemModel(title: "Website", icon: Icons.blur_circular_outlined),
  ContactItemModel(title: "Facebook", icon: Icons.facebook),
  ContactItemModel(title: "Whatssapp", icon: FontAwesomeIcons.whatsapp),
  ContactItemModel(title: "Instagram", icon: FontAwesomeIcons.instagram),
];
