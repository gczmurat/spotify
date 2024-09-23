import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconButton? actions;
  final bool isBack;
  final Widget? title;
  const BasicAppBar({super.key, this.title, this.actions, this.isBack = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [actions ?? const SizedBox()],
      centerTitle: true,
      title: title ?? const SizedBox(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: isBack ? null : IconButton(
        icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? Colors.white.withOpacity(0.03)
                  : Colors.black.withOpacity(0.04),
              shape: BoxShape.circle,
            ),
            child: Icon(
              color: context.isDarkMode ? Colors.white : Colors.black,
              Icons.arrow_back_ios,
              size: 15,
            )),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
