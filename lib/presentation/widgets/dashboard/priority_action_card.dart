import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class PriorityActionCard extends StatelessWidget {
  final String title;
  final String description;
  final String severity;
  final IconData icon;

  const PriorityActionCard({
    Key? key,
    required this.title,
    required this.description,
    required this.severity,
    required this.icon,
  }) : super(key: key);

  Color _getSeverityColor() {
    switch (severity) {
      case 'critical':
        return AppColors.criticalRed;
      case 'warning':
        return AppColors.warningOrange;
      case 'info':
        return AppColors.infoBlue;
      default:
        return AppColors.grey400;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getSeverityColor();

    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: color.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.grey600,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward, color: color),
            ],
          ),
        ),
      ),
    );
  }
}
