import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../widgets/dashboard/priority_action_card.dart';
import '../../widgets/dashboard/city_health_card.dart';
import '../../widgets/dashboard/department_ranking_card.dart';
import '../../widgets/dashboard/zone_performance_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1024;

    return Scaffold(
      appBar: AppBar(
        title: const Text('City Brain Dashboard'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Chip(
                avatar: CircleAvatar(
                  backgroundColor: AppColors.lightGreen,
                  child: const Icon(
                    Icons.person,
                    color: AppColors.white,
                    size: 18,
                  ),
                ),
                label: const Text('Commissioner'),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.grey50,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(isMobile ? 16 : 24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primaryBlue, AppColors.primaryPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Today\'s Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '5 Critical Issues Detected',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.white,
            automaticallyImplyLeading: false,
            toolbarHeight: 60,
            flexibleSpace: Container(
              color: AppColors.white,
              child: TabBar(
                controller: _tabController,
                isScrollable: isMobile,
                indicatorColor: AppColors.primaryBlue,
                labelColor: AppColors.primaryBlue,
                unselectedLabelColor: AppColors.grey500,
                tabs: const [
                  Tab(text: 'Priority'),
                  Tab(text: 'Health'),
                  Tab(text: 'Departments'),
                  Tab(text: 'Zones'),
                  Tab(text: 'Analytics'),
                ],
                onTap: (index) {
                  setState(() {
                    _selectedTab = index;
                  });
                },
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildPriorityTab(isMobile, isTablet),
                _buildHealthTab(isMobile, isTablet),
                _buildDepartmentsTab(isMobile, isTablet),
                _buildZonesTab(isMobile, isTablet),
                _buildAnalyticsTab(isMobile, isTablet),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriorityTab(bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      child: Column(
        children: const [
          PriorityActionCard(
            title: 'East Zone Complaint Backlog',
            description: 'Increased by 30%',
            severity: 'critical',
            icon: Icons.warning_amber,
          ),
          SizedBox(height: 12),
          PriorityActionCard(
            title: 'Engineering Project Delay',
            description: '15 days behind schedule',
            severity: 'warning',
            icon: Icons.engineering,
          ),
          SizedBox(height: 12),
          PriorityActionCard(
            title: 'Revenue Collection Below Target',
            description: 'Central Zone - 25% shortfall',
            severity: 'warning',
            icon: Icons.trending_down,
          ),
        ],
      ),
    );
  }

  Widget _buildHealthTab(bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      child: const Column(
        children: [
          CityHealthCard(),
        ],
      ),
    );
  }

  Widget _buildDepartmentsTab(bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      child: GridView.count(
        crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 3),
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          DepartmentRankingCard(
            name: 'SWMS',
            score: 87,
            trend: 'up',
            icon: Icons.delete_sweep,
            color: AppColors.primaryGreen,
          ),
          DepartmentRankingCard(
            name: 'Engineering',
            score: 72,
            trend: 'down',
            icon: Icons.construction,
            color: AppColors.primaryBlue,
          ),
          DepartmentRankingCard(
            name: 'Health',
            score: 81,
            trend: 'up',
            icon: Icons.health_and_safety,
            color: AppColors.lightGreen,
          ),
          DepartmentRankingCard(
            name: 'Grievance',
            score: 65,
            trend: 'down',
            icon: Icons.contact_support,
            color: AppColors.warningOrange,
          ),
          DepartmentRankingCard(
            name: 'Revenue',
            score: 78,
            trend: 'up',
            icon: Icons.account_balance,
            color: AppColors.primaryPurple,
          ),
          DepartmentRankingCard(
            name: 'Rainfall',
            score: 92,
            trend: 'up',
            icon: Icons.cloud_queue,
            color: AppColors.infoBlue,
          ),
        ],
      ),
    );
  }

  Widget _buildZonesTab(bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      child: GridView.count(
        crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 1),
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: isMobile ? 1 : (isTablet ? 1.2 : 1.5),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ZonePerformanceCard(
            name: 'East Zone',
            score: 85,
            complaints: 245,
            resolutionRate: 78,
            gradient: AppColors.primaryGradient,
          ),
          ZonePerformanceCard(
            name: 'West Zone',
            score: 78,
            complaints: 198,
            resolutionRate: 72,
            gradient: AppColors.greenGradient,
          ),
          ZonePerformanceCard(
            name: 'North Zone',
            score: 82,
            complaints: 156,
            resolutionRate: 84,
            gradient: AppColors.purpleGradient,
          ),
          ZonePerformanceCard(
            name: 'South Zone',
            score: 88,
            complaints: 128,
            resolutionRate: 89,
            gradient: AppColors.primaryGradient,
          ),
          ZonePerformanceCard(
            name: 'Central Zone',
            score: 81,
            complaints: 267,
            resolutionRate: 75,
            gradient: AppColors.greenGradient,
          ),
        ],
      ),
    );
  }

  Widget _buildAnalyticsTab(bool isMobile, bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Trend Analysis - Last 7 Days',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.grey100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('Chart Integration Ready'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
