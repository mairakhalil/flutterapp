import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String label;
  final String value;

  const CustomRichText({
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.0,
              height: 1.56,
              letterSpacing: 1.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: '$label: ',
              ),
              TextSpan(
                text: value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
