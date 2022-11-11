import 'package:flutter/material.dart';
import 'package:flutter_application_2/Controller/auth_service.dart';
import 'package:flutter_application_2/Pages/nova_receita/mobx_store/receita_store.dart';
import 'package:get_it/get_it.dart';
import 'MyApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  GetIt.I.registerSingleton<ReceitaStore>(ReceitaStore());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AuthService())],
    child: MyApp(),
  ));
}
