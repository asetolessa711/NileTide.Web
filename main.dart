import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/home_screen.dart';
import 'services/analytics_service.dart';
import 'services/notifications_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AnalyticsService.initializeAnalytics();
  NotificationsService.initializeWebNotifications();
  runApp(NileTideWebApp());
}

class NileTideWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NileTide',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('am', ''),
        Locale('om', ''),
      ],
      home: HomeScreen(),
    );
  }
}
