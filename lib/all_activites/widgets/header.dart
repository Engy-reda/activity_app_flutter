import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'profile_avatar.dart';
import 'support_style.dart';

class Header extends StatefulWidget {
  final List list;
  final DateTime toDay;
  const Header({super.key, required this.list, required this.toDay});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // spacing: 8.0,
      children: [
        ProfileAvatar(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.list[0], style: SupportStyle.bold()),
            Row(
              // spacing: 8.0,
              children: [
                Text(
                  DateFormat('EEE-d-MM-yyyy').format(widget.toDay),
                  style: SupportStyle.light(),
                ),
                Text(
                  DateFormat.jm().format(DateTime.now()),
                  style: SupportStyle.light(),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              // spacing: 3.0,
              children: [
                // SizedBox(width: 24.0),
                // if (DateTime.now() != null) SizedBox(width: 60.0),
                // if (DateTime.now() == null)
                Text(
                  DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
                  style: SupportStyle.light(),
                ),
                Icon(Icons.lock, color: Colors.red[700], size: 16.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
