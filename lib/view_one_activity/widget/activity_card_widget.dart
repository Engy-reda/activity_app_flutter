import 'package:activity_app/all_activites/widgets/body.dart';
import 'package:activity_app/all_activites/widgets/header.dart';
import 'package:activity_app/all_activites/widgets/interactions.dart';
import 'package:activity_app/view_one_activity/view/view_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ActivityCardWidget extends StatefulWidget {
  const ActivityCardWidget(
      {super.key, required this.list, required this.today});
  final DateTime today;
  final List list;

  @override
  State<ActivityCardWidget> createState() => _ActivityCardWidgetState();
}

class _ActivityCardWidgetState extends State<ActivityCardWidget> {
  bool seeMore = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 7.0, top: 7.0, right: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                      color: Colors.white, child: const ViewActivityScreen()),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(list: widget.list, toDay: widget.today),
                  const SizedBox(height: 14.0),
                  Body(
                    list: widget.list,
                    seeMore: seeMore,
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    seeMore = !seeMore;
                  });
                },
                child: Text(
                  seeMore ? 'See Less' : 'See More ',
                )),
            const InterActions(),
          ],
        ),
      ),
    );
  }
}
