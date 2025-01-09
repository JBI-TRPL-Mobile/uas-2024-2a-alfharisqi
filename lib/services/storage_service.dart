import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user.dart';
import '../models/message.dart';

class StorageService {
  Future<List<User>> loadUsers() async {
    final String response = await rootBundle.loadString('assets/datauser.json');
    final data = await json.decode(response);
    return (data as List).map((user) => User.fromJson(user)).toList();
  }

  Future<List<Message>> loadMessages() async {
    final String response = await rootBundle.loadString('assets/datamessage.json');
    final data = await json.decode(response);
    return (data as List).map((message) => Message.fromJson(message)).toList();
  }
}