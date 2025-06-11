import 'package:flutter/material.dart';
import '../Notification/NotificationPage';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      leading: const Icon(Icons.menu),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    contentPadding: const EdgeInsets.all(0),
                    content: SizedBox(
                      width: double.maxFinite,
                      height: 400,
                      child: NotificationPage(),
                    ),
                  ),
            );
          },
        ),
      ],
      backgroundColor: const Color(0xFF5E72EB),
      elevation: 0,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
