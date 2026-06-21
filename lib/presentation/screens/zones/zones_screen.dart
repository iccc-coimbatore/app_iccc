import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class ZonesScreen extends StatelessWidget {
  const ZonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final zones = [
      {'name': 'East Zone', 'score': 85, 'complaints': 245, 'wards': 22},
      {'name': 'West Zone', 'score': 78, 'complaints': 198, 'wards': 18},
      {'name': 'North Zone', 'score': 82, 'complaints': 156, 'wards': 20},
      {'name': 'South Zone', 'score': 88, 'complaints': 128, 'wards': 21},
      {'name': 'Central Zone', 'score': 81, 'complaints': 267, 'wards': 19},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Zones Management'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            zones.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _buildZoneCard(
                zones[index]['name'] as String,
                zones[index]['score'] as int,
                zones[index]['complaints'] as int,
                zones[index]['wards'] as int,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildZoneCard(String name, int score, int complaints, int wards) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMetric('Score', '$score/100', AppColors.primaryBlue),
                _buildMetric('Complaints', '$complaints', AppColors.warningOrange),
                _buildMetric('Wards', '$wards', AppColors.primaryGreen),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: score / 100,
                minHeight: 8,
                backgroundColor: AppColors.grey200,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.primaryBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetric(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: AppColors.grey600),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}
