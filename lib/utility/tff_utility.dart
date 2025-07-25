import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget reusableTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  required String hintText,
  String? Function(String?)? validator,
  String? labelText,
  TextInputType keyboardType = TextInputType.text,
  List<TextInputFormatter>? inputFormatters,
  double? width,
  TextStyle? textStyle,
  Color fillColor = const Color(0xff3B6336),
  double borderRadius = 50.0,
  int? maxLength,
  int? maxlines,
  Widget? prefixIcon,
  Widget? suffixIcon,
  Widget? suffix,
  bool readOnly = false,
  bool autofocus = false,
  FocusNode? focusNode,
  VoidCallback? onTap,
  Function(String)? onFieldSubmitted,
  Function(String)? onChanged,
  TextInputAction? textInputAction,
  AutovalidateMode? autovalidateMode,
}) {
  return Center(
    child: SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.95,
      child: TextFormField(
        controller: controller,
        autofocus: autofocus,
        focusNode: focusNode,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        textCapitalization: TextCapitalization.words,
        inputFormatters: inputFormatters,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        style: textStyle ?? Theme.of(context).textTheme.labelMedium,
        validator: validator,
        maxLength: maxLength,
        maxLines: maxlines,
        cursorColor: Colors.white,
        buildCounter:
            (
              context, {
              required currentLength,
              required isFocused,
              required maxLength,
            }) => maxLength != null
            ? Text(
                "$currentLength / $maxLength",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(fontSize: 12),
              )
            : const Offstage(),
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12),
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white60, fontSize: 12),
          labelText: labelText,
          suffix: suffix,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          errorStyle: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 14, color: Colors.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: Colors.transparent, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: Colors.transparent, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: Colors.transparent, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    ),
  );
}

Widget reusableUnderLineTextFormField({
  required BuildContext context,
  required TextEditingController controller,
  required String hintText,
  required String? Function(String?) validator,
  String? labelText,
  TextInputType keyboardType = TextInputType.text,
  List<TextInputFormatter>? inputFormatters,
  double? width,
  TextStyle? textStyle,
  Color fillColor = const Color(0xff3B6336),
  double borderRadius = 50.0,
  int? maxLength,
  Widget? prefixIcon,
  Widget? suffixIcon,
  Widget? suffix,
  bool readOnly = false,
  bool autofocus = false,
  FocusNode? focusNode,
  VoidCallback? onTap,
  Function(String)? onFieldSubmitted,
  Function(String)? onChanged,
  TextInputAction? textInputAction,
  AutovalidateMode? autovalidateMode,
}) {
  return SizedBox(
    width: width ?? MediaQuery.of(context).size.width * 0.4,
    child: TextFormField(
      controller: controller,
      autofocus: autofocus,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: TextCapitalization.words,
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      style: textStyle ?? Theme.of(context).textTheme.labelMedium,
      validator: validator,
      maxLength: maxLength,
      cursorColor: Colors.white,
      buildCounter:
          (
            context, {
            required currentLength,
            required isFocused,
            required maxLength,
          }) => maxLength != null
          ? Text(
              "$currentLength / $maxLength",
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: 12),
            )
          : const Offstage(),
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 12),
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white60, fontSize: 12),
        labelText: labelText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorStyle: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(fontSize: 14, color: Colors.red),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}
