class AppConstants {
  // API Configuration
  static const String baseUrl = 'http://localhost:8000/api';
  static const Duration apiTimeout = Duration(seconds: 30);
  
  // Zones
  static const List<String> zones = [
    'East Zone',
    'West Zone',
    'North Zone',
    'South Zone',
    'Central Zone',
  ];
  
  // Departments
  static const List<String> departments = [
    'SWMS',
    'Engineering',
    'Health',
    'Grievance',
    'Revenue',
    'Rainfall & Disaster',
  ];
  
  // Ward Count
  static const int totalWards = 100;
  
  // Performance Thresholds
  static const double excellentThreshold = 85;
  static const double goodThreshold = 70;
  static const double averageThreshold = 50;
}
