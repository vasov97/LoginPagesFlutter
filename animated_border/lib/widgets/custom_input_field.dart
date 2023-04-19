import 'package:animated_border/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../res/colors.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(
    this.label, {
    super.key,
    required this.isPasswordField,
  });
  final String label;
  final bool isPasswordField;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  late bool _isPasswordVisible;
  @override
  void initState() {
    super.initState();
    _isPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              color: neonblue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: TextField(
              obscureText: !_isPasswordVisible,
              style: const TextStyle(
                color: darkBlue,
                fontSize: 19,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
              cursorColor: darkBlue,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                filled: true,
                fillColor: inputColor,
                suffixIconColor: inputColor,
                suffixIcon: widget.isPasswordField
                    ? IconButton(
                        icon: Icon(_isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () => _isPasswordVisible = !_isPasswordVisible,
                          );
                        },
                      )
                    : const SizedBox(),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
