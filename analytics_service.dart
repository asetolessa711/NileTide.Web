import 'package:flutter/foundation.dart';

class AnalyticsService {
  static void initializeAnalytics() {
    if (kIsWeb) {
      print('Web Analytics Initialized');
    } else {
      print('Analytics for mobile');
    }
  }

  static void logEvent(String eventName, Map<String, dynamic> parameters) {
    print('Event: $eventName, Parameters: $parameters');
  }

  static void logSearch(String query) {
    logEvent('search', {'query': query});
  }

  static void logContentView(String contentId, String contentType) {
    logEvent('content_view', {'id': contentId, 'type': contentType});
  }
}
