import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color btncolor, btntextcolor;
  final String btntext;
  final VoidCallback onPressed;
  const Buttons(
      {super.key,
      required this.btncolor,
      required this.btntext,
      required this.btntextcolor,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(btncolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              child: Text(
                btntext,
                style: TextStyle(color: btntextcolor),
              ))),
    );
  }
}
