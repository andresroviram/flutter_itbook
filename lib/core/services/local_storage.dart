import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _prefRemember = 'REMEMBER';
const _prefHistoryList = 'HISTORYLIST';
const _prefLoginInfoUserName = 'LOGINUSERNAME';
const _prefLoginInfoPass = 'LOGINPASS';
const _prefIdUser = 'IDUSER';

abstract class LocalStorage {
  Future<void> clearStorage();
  Future<bool> getRemember();
  Future<void> saveRemember(bool remember);
  Future<void> saveUserLoginUserName(String userName);
  Future<String> getUserLoginUserName();
  Future<String> getUserLoginPass();
  Future<void> saveUserLoginPass(String pass);
  Future<String?> getIdUser();
  Future<void> saveIdUser(String idUser);
  Future<void> saveHistoryList(List<String> historyList);
  Future<List<String>> getHistoryList();
}

@Injectable(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  @override
  Future<void> clearStorage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(_prefIdUser);
  }

  @override
  Future<String?> getIdUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_prefIdUser);
  }

  @override
  Future<void> saveIdUser(String idUser) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_prefIdUser, idUser);
  }

  @override
  Future<bool> getRemember() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_prefRemember) ?? false;
  }

  @override
  Future<void> saveRemember(bool remember) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_prefRemember, remember);
  }

  @override
  Future<void> saveHistoryList(List<String> historyList) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setStringList(_prefHistoryList, historyList);
  }

  @override
  Future<List<String>> getHistoryList() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(_prefHistoryList) ?? [];
  }

  @override
  Future<void> saveUserLoginUserName(String username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_prefLoginInfoUserName, username);
  }

  @override
  Future<void> saveUserLoginPass(String pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_prefLoginInfoPass, pass);
  }

  @override
  Future<String> getUserLoginUserName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_prefLoginInfoUserName) ?? '';
  }

  @override
  Future<String> getUserLoginPass() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_prefLoginInfoPass) ?? '';
  }
}
