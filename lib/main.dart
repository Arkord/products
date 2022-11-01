import 'package:flutter/material.dart';
import 'package:productos_app/screens/screens.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Products App',
      initialRoute: 'home',
      routes: {
        'login': ( _ ) => LoginScreen(),
        'home' : ( _ ) => HomeScreen(),
      },
      theme:
        ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Color(0xFF54504F)
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFFFEE100),
            foregroundColor: Color(0xFF595758)
          )
      ),
    );
  }
}