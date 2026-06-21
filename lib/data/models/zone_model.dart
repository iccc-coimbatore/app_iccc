class Zone {
  final String id;
  final String name;
  final double performanceScore;
  final int complaintCount;
  final double resolutionRate;
  final String trend;

  Zone({
    required this.id,
    required this.name,
    required this.performanceScore,
    required this.complaintCount,
    required this.resolutionRate,
    required this.trend,
  });

  factory Zone.fromJson(Map<String, dynamic> json) {
    return Zone(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      performanceScore: (json['performanceScore'] ?? 0).toDouble(),
      complaintCount: json['complaintCount'] ?? 0,
      resolutionRate: (json['resolutionRate'] ?? 0).toDouble(),
      trend: json['trend'] ?? 'stable',
    );
  }
}
