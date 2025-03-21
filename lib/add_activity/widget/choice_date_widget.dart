import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class ChoiceDateWidget extends StatefulWidget {
  const ChoiceDateWidget({super.key});

  @override
  State<ChoiceDateWidget> createState() => _ChoiceDateWidgetState();
}

class _ChoiceDateWidgetState extends State<ChoiceDateWidget> {
  DateTime todayStartTime = DateTime.now();
  DateTime todayEndTime = DateTime.now();
  bool date = false;

  void _onDaySelectedStartTime(DateTime day, DateTime focusedDay) {
    setState(() {
      todayStartTime = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Visit Date : ', style: SupportStyle.bold()),
              Container(
                margin: const EdgeInsets.only(left: 12),
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(todayStartTime.toString().split(" ")[0],
                          style: SupportStyle.simeBold()),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          date = true;
                        });
                      },
                      icon: Icon(
                        MdiIcons.calendar,
                        color: Colors.grey[500],
                        size: 25.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        date
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TableCalendar(
                        locale: "en_US",
                        rowHeight: 43,
                        headerStyle: const HeaderStyle(
                            formatButtonVisible: false, titleCentered: true),
                        availableGestures: AvailableGestures.all,
                        selectedDayPredicate: (day) =>
                            isSameDay(day, todayStartTime),
                        focusedDay: todayStartTime,
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 10, 16),
                        onDaySelected: _onDaySelectedStartTime,
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              crmAddActivityModel.visitDate =
                                  todayStartTime.toString().split(" ")[0];
                              date = false;
                            });
                          },
                          child: const Text(
                            'Ok',
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
