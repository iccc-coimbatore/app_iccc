import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors - Government Theme
  static const Color primaryBlue = Color(0xFF1E3A8A);
  static const Color primaryGreen = Color(0xFF15803D);
  static const Color primaryPurple = Color(0xFF6B21A8);
  
  // Secondary Colors
  static const Color lightBlue = Color(0xFF3B82F6);
  static const Color lightGreen = Color(0xFF22C55E);
  static const Color lightPurple = Color(0xFFA855F7);
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF1F2937);
  static const Color grey50 = Color(0xFFF9FAFB);
  static const Color grey100 = Color(0xFFF3F4F6);
  static const Color grey200 = Color(0xFFE5E7EB);
  static const Color grey300 = Color(0xFFD1D5DB);
  static const Color grey400 = Color(0xFF9CA3AF);
  static const Color grey500 = Color(0xFF6B7280);
  static const Color grey600 = Color(0xFF4B5563);
  static const Color grey700 = Color(0xFF374151);
  
  // Alert Colors
  static const Color criticalRed = Color(0xFFDC2626);
  static const Color warningOrange = Color(0xFFF97316);
  static const Color successGreen = Color(0xFF16A34A);
  static const Color infoBlue = Color(0xFF0284C7);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryBlue, primaryPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient greenGradient = LinearGradient(
    colors: [primaryGreen, lightGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient purpleGradient = LinearGradient(
    colors: [primaryPurple, lightPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
