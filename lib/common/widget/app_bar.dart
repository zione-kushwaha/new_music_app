import 'package:flutter/material.dart';
import '../../utils/device/Tdevice.dart';
import '../../utils/helper/Thelper.dart';
import '../../utils/theme/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget search;

  const TAppBar({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = THelperFunctions.isDarkMode(context);
    final Color labelColor = isDarkMode ? Colors.white : Colors.black;
    final Color unselectedLabelColor = isDarkMode
        ? Colors.white.withOpacity(0.5)
        : Colors.black.withOpacity(0.5);

    return AppBar(
      bottom: TabBar(
        isScrollable: true,
        labelColor: labelColor,
        indicatorColor: labelColor,
        unselectedLabelColor: unselectedLabelColor,
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        tabs: const [
          Tab(text: 'Audio'),
          Tab(text: 'Playlist'),
          Tab(text: 'Album'),
          Tab(text: 'Artist'),
          Tab(text: 'Genres'),
        ],
      ),
      title: search,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + TSizes.md * 2.5);
}
