import 'package:dibasys_task/core/utils/assets/app_assets.dart';
import 'package:dibasys_task/core/utils/customs/custom_button.dart';
import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:dibasys_task/features/checkin/presentation/screen/checkin_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomeHeader extends StatelessWidget {
  final String username;
  final String date;
  final String workingHours;
  final VoidCallback onCheckIn;

  const HomeHeader({
    super.key,
    required this.username,
    required this.date,
    required this.workingHours,
    required this.onCheckIn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFDFDFD),
            Color(0xFFF5E3E3),
            Color(0xFFF6E6DE),
            Color(0xFFD4CED2),
            Color(0xFFB9A2A2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, color: Colors.black),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage(AppIcons.download), size: 20),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Greeting
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey $username",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff3F3E3E),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      date,
                      style: const TextStyle(color: Color(0xff3F3E3E)),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=12",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Working Hours
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xCC3C3939),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    "Working Hours",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    workingHours,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            CustomButton(
              title: "Manual Check-in",
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 400),
                    child: const CheckInScreen(),
                  ),
                );
              },
              color: context.appColors.primary,
              textColor: context.appColors.text,
            ),
          ],
        ),
      ),
    );
  }
}
