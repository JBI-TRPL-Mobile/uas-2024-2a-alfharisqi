import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/storage_service.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [];
  final StorageService _storageService = StorageService();

  List<User> get users => _users;

  Future<void> fetchUsers() async {
    _users = await _storageService.loadUsers();
    notifyListeners();
  }
}