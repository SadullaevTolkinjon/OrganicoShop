import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico_ui/provider/cancel_provider.dart';
import 'package:organico_ui/provider/counter_provider.dart';
import 'package:organico_ui/provider/home_page_provider.dart';
import 'package:organico_ui/provider/my_order_provider.dart';
import 'package:organico_ui/provider/newRegistr_provider.dart';
import 'package:organico_ui/provider/settings_provider.dart';
import 'package:organico_ui/router/route.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      child: const MyApp(),
      providers: [
        ChangeNotifierProvider(create: (context) => NewRegistrProvider()),
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => MyOrderProvider()),
        ChangeNotifierProvider(create: (context) => CancelLationProvider()),
        ChangeNotifierProvider(create: (context) => SettingsProvider()),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppin",
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) => GenerateRouterr.routeGenerate(settings),
    );
  }
}
