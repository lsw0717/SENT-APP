import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import './src/app.dart' as app;
import 'firebase_options.dart';
import './src/pages/after_login/main_page.dart' as main_page;
import './src/pages/after_login/user_info_regi.dart' as user_info_regi;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  KakaoSdk.init(nativeAppKey: '471360d9cc01e28f66ae693bc7b9cae7');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/main_page': (context) => main_page.MainPage(),
        '/user_info_regi': (context) => user_info_regi.UserIfoRegi(),
      },
      title: 'Flutter',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: app.App(),

    );

  }
}
