import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  //초기화 해주어야 데이터를 로컬에서 저장할 수 있음.
  final _box = GetStorage(); //storage 로컬 데이터 스토리지
  final _key = 'isDarkmode';

  //밑의 펑션이 다크모드를 제어한다.

  // save로 띰모드 상태를 저장한다. (파라메터를입력) box상태에 입력해줌.(key와 파라메터입력값)
  _saveThemeBox(bool isDarkdMode)=>_box.write(_key, isDarkdMode);
  // 로드띰 프롬 박스에서 =>  박스리드를 키를 불러오고 있으면 트루 없으면 펄스
  bool _loadThemeFromBox() => _box.read(_key)??false;
  // 띰모드를 겟 하여 => 로드띰프롬박스가 트루면 다크모드,펄스면 라이트모드
 ThemeMode get theme => _loadThemeFromBox()?ThemeMode.dark : ThemeMode.light;

 void switchTheme(){
   Get.changeThemeMode(_loadThemeFromBox()?ThemeMode.light:ThemeMode.dark);
   _saveThemeBox(!_loadThemeFromBox());
 }
}