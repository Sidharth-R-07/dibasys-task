import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: context.appColors.text,
          size: 20,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        children: [
          const SizedBox(height: 40),
          Text(
            'Welcome Back',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: context.appColors.text,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Login to your account',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: context.appColors.text),
          ),
          const SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: context.appColors.text),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.text),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.primary),
              ),
            ),
            style: TextStyle(color: context.appColors.text),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: context.appColors.text),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.text),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.appColors.primary),
              ),
            ),
            style: TextStyle(color: context.appColors.text),
            obscureText: true,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: context.appColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: context.appColors.text,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
