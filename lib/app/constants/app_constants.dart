class AppConstants {
  static const String baseUrl = 'http://localhost:8000/api';
  static const Duration apiTimeout = Duration(seconds: 30);
  
  static const List<String> zones = [
    'East Zone',
    'West Zone',
    'North Zone',
    'South Zone',
    'Central Zone',
  ];
  
  static const List<String> departments = [
    'SWMS',
    'Engineering',
    'Health',
    'Grievance',
    'Revenue',
    'Rainfall & Disaster',
  ];
  
  static const int totalWards = 100;
  static const double excellentThreshold = 85;
  static const double goodThreshold = 70;
  static const double averageThreshold = 50;
}
