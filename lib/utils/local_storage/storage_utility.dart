
import 'package:get_storage/get_storage.dart';

class cartLocalStorage{

  static final cartLocalStorage _instance = cartLocalStorage._internal();

  factory cartLocalStorage(){
    return _instance;
  }

  cartLocalStorage._internal();

  final _storage = GetStorage();

  //generic method to save data
  Future<void> saveData<cart>(String key, cart value) async{
    await _storage.write(key, value);
  }

  //generic method to read data
  cart? readData<cart>(String key){
    return _storage.read<cart>(key);
  }

  //generic method to remove data
  Future<void>removeData(String key) async{
    await _storage.remove(key);
  }

  //clear all data in storage
  Future<void> clearAll() async{
    await _storage.erase();
  }

}