import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.buttonTitle,
    required this.onPressed,
    required this.isEnable,
  }) : super(key: key);

  final String buttonTitle;
  final Function onPressed;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        top: 20,
        bottom: 20,
      ),
      child: SizedBox(
        width: 170.w,
        height: 50.h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor : isEnable ? MaterialStateProperty.all(const Color(0xff064068)) : MaterialStateProperty.all(const Color(0xffFAF2E6)) ,
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: isEnable ? () => onPressed() : null,
          child: Text(buttonTitle),
        ),
      ),
    );
  }
}
