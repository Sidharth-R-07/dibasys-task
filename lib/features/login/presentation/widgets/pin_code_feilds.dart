import 'package:dibasys_task/core/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasscodeField extends StatelessWidget {
  final Function(String) onCompleted;

  const PasscodeField({super.key, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Passcode",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: context.appColors.text,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 280,
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            obscureText: true,
            animationType: AnimationType.fade,
            keyboardType: TextInputType.number,
            textStyle: TextStyle(
              color: context.appColors.primary,
              fontSize: 20,
            ),
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(8),
              borderWidth: .1,
              fieldHeight: 50,
              fieldWidth: 50,
              activeFillColor: const Color(0xFF1A1A1A),
              inactiveFillColor: const Color(0xFF1A1A1A),
              selectedFillColor: const Color(0xFF1A1A1A),
              inactiveColor: Colors.grey.shade700,
              activeColor: context.appColors.primary,
              selectedColor: context.appColors.primary,
            ),
            enableActiveFill: true,
            onCompleted: onCompleted,
          ),
        ),
      ],
    );
  }
}
