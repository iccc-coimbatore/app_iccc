class Department {
  final String id;
  final String name;
  final String icon;
  final double performanceScore;
  final String trend;
  final int alertCount;
  final String lastUpdate;

  Department({
    required this.id,
    required this.name,
    required this.icon,
    required this.performanceScore,
    required this.trend,
    required this.alertCount,
    required this.lastUpdate,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      icon: json['icon'] ?? '',
      performanceScore: (json['performanceScore'] ?? 0).toDouble(),
      trend: json['trend'] ?? 'stable',
      alertCount: json['alertCount'] ?? 0,
      lastUpdate: json['lastUpdate'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'performanceScore': performanceScore,
      'trend': trend,
      'alertCount': alertCount,
      'lastUpdate': lastUpdate,
    };
  }
}
