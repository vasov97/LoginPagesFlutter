import 'package:flutter/material.dart';

import '../res/colors.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.3,
              color: inputColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            'Or Login with',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.3,
              color: inputColor,
            ),
          ),
        ),
      ],
    );
  }
}
