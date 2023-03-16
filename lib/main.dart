import 'package:flutter/material.dart';
import 'package:fl_components/ui/theme/app_theme.dart';
import 'package:fl_components/ui/screens/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: ListView2Screen(),
        routes: AppRoutes.getAppRoutes(),
        initialRoute: AppRoutes.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
