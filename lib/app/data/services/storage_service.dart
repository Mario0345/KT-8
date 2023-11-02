import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageService extends GetxService {
  late Box box;
  String? getRefreshToken() => _readData('refresh');
  void writeRefreshToken(String token) => _writeData('refresh', token);
    
  // String? getRefresh(){
  // }

  void _writeData(String key, String value){
    box.put(key,value);
  }
  void _readData(String key){
    box.get(key);
  }

  Future<StorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('kt');
    return this;
  }

}