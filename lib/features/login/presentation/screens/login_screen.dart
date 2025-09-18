import 'package:animate_do/animate_do.dart';
import 'package:dibasys_task/core/utils/customs/custom_button.dart';
import 'package:dibasys_task/core/utils/customs/custom_text_feild.dart';
import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:dibasys_task/features/home/presentation/screens/home_screen.dart';
import 'package:dibasys_task/features/login/presentation/provider/login_provider.dart';
import 'package:dibasys_task/features/login/presentation/widgets/pin_code_feilds.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FadeInLeft(
          duration: const Duration(milliseconds: 600),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: context.appColors.text,
            size: 20,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),

          FadeInDown(
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: context.appColors.primary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          FadeIn(
            duration: const Duration(milliseconds: 1000),
            child: Center(
              child: Text(
                'Welcome back to your account',
                style: const TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
          ),
          const SizedBox(height: 40),

          SlideInUp(
            duration: const Duration(milliseconds: 800),
            child: CustomTextField(
              label: "Phone number",
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
          ),
          const SizedBox(height: 20),

          SlideInUp(
            duration: const Duration(milliseconds: 1000),
            child: PasscodeField(
              onCompleted: (code) {
                print("Entered Passcode: $code");
              },
            ),
          ),
          const SizedBox(height: 10),

          FadeInUp(
            duration: const Duration(milliseconds: 1000),
            child: Row(
              children: [
                Consumer<LoginProvider>(
                  builder: (context, state, _) => Checkbox(
                    checkColor: context.appColors.text,
                    activeColor: context.appColors.primary,
                    value: state.rememberMe,
                    onChanged: context.read<LoginProvider>().toggleRememberMe,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Remember me',
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(width: 4),
                TextButton(
                  onPressed: () {},
                  isSemanticButton: false,
                  child: Text(
                    "Forgot Passcode?",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: context.appColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: context.appColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          BounceInUp(
            duration: const Duration(milliseconds: 1000),
            child: CustomButton(
              title: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 400),
                    child: const HomeScreen(),
                  ),
                );
              },
              color: context.appColors.primary,
              textColor: context.appColors.text,
            ),
          ),
          const SizedBox(height: 30),

          FadeInUp(
            duration: const Duration(milliseconds: 1200),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: context.appColors.text,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: "Register",
                      style: TextStyle(
                        color: context.appColors.primary,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
