import 'package:dibasys_task/core/utils/customs/custom_button.dart';
import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:dibasys_task/features/checkin/presentation/provider/checkin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CheckInProvider>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // Title + Subtitle
            const Text(
              "Check-in",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Select Check-in Type",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),

            // Card Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border: Border.all(color: Colors.white24, width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Worker avatar + label
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(color: Colors.white24, width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("👷", style: TextStyle(fontSize: 36)),
                        SizedBox(height: 8),
                        Text(
                          "Worker",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Project Dropdown
                  DropdownButtonFormField<String>(
                    dropdownColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    hint: const Text(
                      "Projects",
                      style: TextStyle(color: Colors.white54),
                    ),
                    value: provider.selectedProject,
                    items: ["Project A", "Project B", "Project C"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: provider.setProject,
                  ),
                  const SizedBox(height: 16),

                  // Gates Dropdown
                  DropdownButtonFormField<String>(
                    dropdownColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    hint: const Text(
                      "Gates",
                      style: TextStyle(color: Colors.white54),
                    ),
                    value: provider.selectedGate,
                    items: ["Gate 1", "Gate 2", "Gate 3"]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: provider.setGate,
                  ),
                  const SizedBox(height: 24),

                  // Work Type Radio
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Work Type",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          value: "Budget",
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          groupValue: provider.workType,
                          activeColor: context.appColors.primary,
                          onChanged: provider.setWorkType,
                          title: const Text(
                            "Budget",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          value: "Issue",
                          contentPadding: EdgeInsets.zero,
                          groupValue: provider.workType,
                          activeColor: context.appColors.primary,
                          onChanged: provider.setWorkType,
                          title: const Text(
                            "Issue",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Button
                  CustomButton(
                    title: "Check-in",
                    onPressed: () {
                      debugPrint(
                        "Project: ${provider.selectedProject}, "
                        "Gate: ${provider.selectedGate}, "
                        "WorkType: ${provider.workType}",
                      );
                    },
                    color: context.appColors.primary,
                    textColor: context.appColors.text,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
