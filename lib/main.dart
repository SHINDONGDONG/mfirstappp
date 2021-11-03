import 'package:flutter/material.dart';
import 'package:flutter_project/services/theme_services.dart';
import 'package:flutter_project/ui/home_page.dart';
import 'package:flutter_project/ui/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

//async await으로 이니셜라이즈 해줘야 스토리지를 사용 할 수 잇다
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: ThemeServices().theme,
      home: const HomePage(),
    );
  }
}


