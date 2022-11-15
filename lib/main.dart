import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/pages/home_page.dart';
import 'package:qr/pages/map_page.dart';
import 'package:qr/provider/selected_navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UiSelected(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
       initialRoute: 'home',
       routes: {
        'home' :(context) => const HomePage(),
        'map'  :(context) => const MapPage(), 
       },
       theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        floatingActionButtonTheme:  FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple[200]
          )
       ),
      ),
    );
  }
}