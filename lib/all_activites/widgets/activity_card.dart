import 'package:activity_app/view_one_activity/view/view_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'body.dart';
import 'header.dart';
import 'interactions.dart';

class ActivityCard extends StatefulWidget {
  const ActivityCard({super.key, required this.list, required this.today});
  final DateTime today;
  final List list;

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 7.0, top: 7.0, right: 7.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => const ViewActivityScreen()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(list: widget.list, toDay: widget.today),
                  const SizedBox(height: 14.0),
                  Body(
                    list: widget.list,
                    seeMore: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.0),
            InterActions(),
          ],
        ),
      ),
    );
  }
}
