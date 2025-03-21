import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:activity_app/all_activites/widgets/profile_avatar.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';

class HeaderWidget extends StatefulWidget {
  final List list;
  const HeaderWidget({super.key, required this.list});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ProfileAvatar(),
      title: Text(widget.list[0], style: SupportStyle.bold()),
      subtitle: Row(
        children: [
          Text(widget.list[1], style: SupportStyle.light()),
          Text(
            "  ${DateFormat.jm().format(DateTime.now())}",
            style: SupportStyle.light(),
          ),
        ],
      ),
    );
  }
}
