import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departments'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildDepartmentCard('SWMS', 'Solid Waste Management', 87, Icons.delete_sweep, AppColors.primaryGreen),
            const SizedBox(height: 12),
            _buildDepartmentCard('Engineering', 'Infrastructure Projects', 72, Icons.construction, AppColors.primaryBlue),
            const SizedBox(height: 12),
            _buildDepartmentCard('Health', 'Public Health', 81, Icons.health_and_safety, AppColors.lightGreen),
            const SizedBox(height: 12),
            _buildDepartmentCard('Grievance', 'Complaint Management', 65, Icons.contact_support, AppColors.warningOrange),
            const SizedBox(height: 12),
            _buildDepartmentCard('Revenue', 'Tax Collection', 78, Icons.account_balance, AppColors.primaryPurple),
            const SizedBox(height: 12),
            _buildDepartmentCard('Rainfall', 'Disaster Monitoring', 92, Icons.cloud_queue, AppColors.infoBlue),
          ],
        ),
      ),
    );
  }

  Widget _buildDepartmentCard(String name, String subtitle, int score, IconData icon, Color color) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.grey600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(icon, color: color, size: 28),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: score / 100,
                backgroundColor: AppColors.grey200,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
              const SizedBox(height: 8),
              Text(
                'Performance Score: $score/100',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
