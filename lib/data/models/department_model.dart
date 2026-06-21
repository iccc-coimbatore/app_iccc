class Department {
  final String id;
  final String name;
  final double performanceScore;
  final String trend;
  final int alertCount;

  Department({
    required this.id,
    required this.name,
    required this.performanceScore,
    required this.trend,
    required this.alertCount,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      performanceScore: (json['performanceScore'] ?? 0).toDouble(),
      trend: json['trend'] ?? 'stable',
      alertCount: json['alertCount'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'performanceScore': performanceScore,
      'trend': trend,
      'alertCount': alertCount,
    };
  }
}
