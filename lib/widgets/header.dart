import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? ending;
  final int headerType;

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  const Header(
      {Key? key,
      this.leading,
      this.title,
      this.ending,
      required this.headerType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return headerType == 1
        ? AppBar(
            title: title,
            backgroundColor: AppColors.backgroundColor,
          )
        : headerType == 2
            ? AppBar(
                leading: leading,
                title: title,
                backgroundColor: AppColors.backgroundColor,
              )
            : AppBar(
                leading: leading,
                title: title,
                actions: [ending!],
                backgroundColor: AppColors.backgroundColor,
              );
  }
}
