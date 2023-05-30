import 'package:buttom_navigation/theme/app_theme.dart';
import 'package:buttom_navigation/view/dashboard_view.dart';
import 'package:buttom_navigation/view/home_view.dart';
import 'package:flutter/material.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "font and theme",
      theme: AppTheme.getApplicationTheme(),
        
      
      initialRoute: '/',
      routes: {
        '/': (context)=> const Dashboard_view(),
        '/homeroute':(context) => const Home_view(),
        // '/profileroute'

      },
      
    );
  }
}

