import 'package:dibasys_task/core/utils/assets/app_assets.dart';
import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:dibasys_task/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 420,
            flexibleSpace: FlexibleSpaceBar(
              background: HomeHeader(
                username: "Jose",
                date: "Tuesday 17 June, 2025",
                workingHours: "00:00:00 Hrs",
                onCheckIn: () {
                  debugPrint("Manual Check-in clicked");
                },
              ),
            ),
          ),
        ],
      ),

      // Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.appColors.background,
        selectedItemColor: context.appColors.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.home)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.note)),
            label: "Activites",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.work)),
            label: "Jobs",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.bell)),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}
