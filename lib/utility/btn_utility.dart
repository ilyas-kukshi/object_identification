import 'package:flutter/material.dart';

Widget reusableButton({
  required BuildContext context,
  required String text,
  TextStyle? textStyle,
  required Function() onPressed,
  ButtonStyle? buttonStyle,
  double? width,
  double borderRadius = 50.0,
}) {
  return Center(
    child: SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.95,
      child: ElevatedButton(
        style: buttonStyle ?? Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(
          text,
          style:
              textStyle ??
              Theme.of(context).textTheme.labelMedium!.copyWith(
                // color: Constants.buttonTextColor,
              ),
        ),
      ),
    ),
  );
}

Widget reusableBottomFlatBtn({
  required String text,
  required BuildContext context,
  TextStyle? textStyle,
  Color? backgroundColor,
  double? height,
  double? width,
  double? borderRadius,
  List<BoxShadow>? boxShadow,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height ?? 45,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(0),
        boxShadow:
            boxShadow ??
            [
              BoxShadow(
                color: Colors.grey.withAlpha((0.2 * 255).toInt()),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:
              textStyle ??
              Theme.of(context).textTheme.labelMedium!.copyWith(
                // color: Constants.buttonTextColor,
              ),
        ),
      ),
    ),
  );
}
