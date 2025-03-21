import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:numberpicker/numberpicker.dart';

class ChoiceTimeWidget extends StatefulWidget {
  final String time;
  final double width;
  final double margin;
  const ChoiceTimeWidget(
      {super.key,
      required this.time,
      required this.width,
      required this.margin});

  @override
  State<ChoiceTimeWidget> createState() => _ChoiceTimeWidgetState();
}

class _ChoiceTimeWidgetState extends State<ChoiceTimeWidget> {
  bool startTime = false;
  bool endTime = false;

  int startTimeHour = 0;
  int startTimeMinute = 0;
  String startTimeTimeFormat = 'AM';

  int endTimeHour = 0;
  int endTimeMinute = 0;
  String endTimeTimeFormat = 'AM';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('${widget.time}  :  ', style: SupportStyle.bold()),
              Container(
                margin: EdgeInsets.only(left: widget.margin),
                width: MediaQuery.of(context).size.width * widget.width,
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
                      child: Text(
                          ' ${startTimeHour.toString().padLeft(2, "0")} : ${startTimeMinute.toString().padLeft(2, "0")}  $startTimeTimeFormat',
                          style: SupportStyle.simeBold()),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          startTime = true;
                        });
                      },
                      icon: Icon(
                        MdiIcons.clock,
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
        startTime
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      shadowColor: const Color.fromARGB(255, 12, 65, 108),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumberPicker(
                                minValue: 0,
                                maxValue: 12,
                                value: startTimeHour,
                                zeroPad: true,
                                infiniteLoop: true,
                                itemHeight: 60,
                                itemWidth: 80,
                                onChanged: (value) {
                                  setState(() {
                                    startTimeHour = value;
                                  });
                                },
                                textStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 20),
                                selectedTextStyle: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(color: Colors.black),
                                        bottom:
                                            BorderSide(color: Colors.black))),
                              ),
                              NumberPicker(
                                minValue: 0,
                                maxValue: 59,
                                value: startTimeMinute,
                                zeroPad: true,
                                infiniteLoop: true,
                                itemHeight: 60,
                                itemWidth: 80,
                                onChanged: (value) {
                                  setState(() {
                                    startTimeMinute = value;
                                  });
                                },
                                textStyle: const TextStyle(
                                    color: Colors.grey, fontSize: 20),
                                selectedTextStyle: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(color: Colors.black),
                                        bottom:
                                            BorderSide(color: Colors.black))),
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        startTimeTimeFormat = "AM";
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: startTimeTimeFormat == "AM"
                                            ? const Color.fromARGB(
                                                255, 80, 79, 158)
                                            : const Color.fromARGB(
                                                255, 144, 143, 214),
                                        border: Border.all(
                                            color: startTimeTimeFormat == "AM"
                                                ? const Color.fromARGB(
                                                    255, 80, 79, 158)
                                                : const Color.fromARGB(
                                                    255, 144, 143, 214)),
                                      ),
                                      child: const Text(
                                        "AM",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        startTimeTimeFormat = "PM";
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: startTimeTimeFormat == "PM"
                                            ? const Color.fromARGB(
                                                255, 80, 79, 158)
                                            : const Color.fromARGB(
                                                255, 144, 143, 214),
                                        border: Border.all(
                                            color: startTimeTimeFormat == "AM"
                                                ? const Color.fromARGB(
                                                    255, 80, 79, 158)
                                                : const Color.fromARGB(
                                                    255, 144, 143, 214)),
                                      ),
                                      child: const Text(
                                        "PM",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  crmAddActivityModel.startTime =
                                      ' ${startTimeHour.toString().padLeft(2, "0")} : ${startTimeMinute.toString().padLeft(2, "0")}  $startTimeTimeFormat';
                                  startTime = false;
                                });
                              },
                              child: const Text(
                                'Ok',
                                style: TextStyle(color: Colors.red),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
