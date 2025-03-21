import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Scheduled extends StatefulWidget {
  final List list;
  const Scheduled({super.key, required this.list});

  @override
  State<Scheduled> createState() => _PlanningState();
}

class _PlanningState extends State<Scheduled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Scheduled', style: SupportStyle.simeBold()),
        Row(
          //  spacing: 6,
          children: [
            Text(
              widget.list[1],
              style: SupportStyle.light().copyWith(
                color: Colors.blue.shade800,
                fontSize: 12.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 1.0),
            Text(
              DateFormat.jm().format(DateTime.now()),
              style: SupportStyle.light().copyWith(
                color: Colors.blue.shade800,
                fontSize: 12.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('to', style: SupportStyle.simeLight()),
            Text(
              DateFormat.jm().format(DateTime.now()),
              style: SupportStyle.light().copyWith(
                color: Colors.blue.shade800,
                fontSize: 12.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
