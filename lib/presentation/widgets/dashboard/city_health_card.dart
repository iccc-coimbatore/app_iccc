import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class CityHealthCard extends StatelessWidget {
  const CityHealthCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'City Health Index',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: CircularProgressIndicator(
                          value: 0.84,
                          strokeWidth: 8,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.primaryGreen,
                          ),
                          backgroundColor: AppColors.grey200,
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            '84',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                          Text(
                            'out of 100',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.grey600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Excellent',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.successGreen,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Department Breakdown',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            _buildScoreRow('SWMS', 87),
            const SizedBox(height: 12),
            _buildScoreRow('Engineering', 72),
            const SizedBox(height: 12),
            _buildScoreRow('Health', 81),
            const SizedBox(height: 12),
            _buildScoreRow('Grievance', 65),
            const SizedBox(height: 12),
            _buildScoreRow('Revenue', 78),
            const SizedBox(height: 12),
            _buildScoreRow('Rainfall', 92),
          ],
        ),
      ),
    );
  }

  static Widget _buildScoreRow(String name, int score) {
    Color barColor;
    if (score >= 85) {
      barColor = AppColors.successGreen;
    } else if (score >= 70) {
      barColor = AppColors.infoBlue;
    } else if (score >= 50) {
      barColor = AppColors.warningOrange;
    } else {
      barColor = AppColors.criticalRed;
    }

    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: score / 100,
              minHeight: 8,
              backgroundColor: AppColors.grey200,
              valueColor: AlwaysStoppedAnimation<Color>(barColor),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          '$score',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
