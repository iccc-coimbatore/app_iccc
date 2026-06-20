class CityHealth {
  final double overallScore;
  final double swmsScore;
  final double engineeringScore;
  final double healthScore;
  final double grievanceScore;
  final double revenueScore;
  final double rainfallScore;
  final String lastUpdated;

  CityHealth({
    required this.overallScore,
    required this.swmsScore,
    required this.engineeringScore,
    required this.healthScore,
    required this.grievanceScore,
    required this.revenueScore,
    required this.rainfallScore,
    required this.lastUpdated,
  });

  factory CityHealth.fromJson(Map<String, dynamic> json) {
    return CityHealth(
      overallScore: (json['overallScore'] ?? 0).toDouble(),
      swmsScore: (json['swmsScore'] ?? 0).toDouble(),
      engineeringScore: (json['engineeringScore'] ?? 0).toDouble(),
      healthScore: (json['healthScore'] ?? 0).toDouble(),
      grievanceScore: (json['grievanceScore'] ?? 0).toDouble(),
      revenueScore: (json['revenueScore'] ?? 0).toDouble(),
      rainfallScore: (json['rainfallScore'] ?? 0).toDouble(),
      lastUpdated: json['lastUpdated'] ?? '',
    );
  }
}
