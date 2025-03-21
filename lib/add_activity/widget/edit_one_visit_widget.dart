// import 'package:activity_app/add_activity/model/constant.dart';
// import 'package:activity_app/add_activity/model/crm_add_activity_model.dart';
// import 'package:activity_app/add_activity/widget/drop_down_list_data_widget.dart';
// import 'package:activity_app/add_activity/widget/multi_selected_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:numberpicker/numberpicker.dart';
// import 'package:table_calendar/table_calendar.dart';

// const List<String> listBrand = <String>['MSD', 'BrandName'];

// const List<String> listNameCustomer = <String>[
//   'engy reda soliman',
//   'ahmed',
//   'eyad'
// ];
// const List<String> listAreaCustomer = <String>['egypt', 'minia', 'suadi'];
// const List<String> listTypeOfVisit = <String>['sales', 'colection', 'general'];
// final List<String> otherVisitors = [
//   'engy Reda soilman',
//   'Pets Veterinary Clinic',
//   'Eyad',
//   'Hassan'
// ];
// final List<String> items = ['cc++', 'java', 'dart', 'flutter'];
// const List<String> listBusinessUnit = <String>['B1', 'B2'];

// class EditOneVisitWidget extends StatefulWidget {
//   const EditOneVisitWidget({super.key, required this.crmAddActivityModel});
//   final CrmAddActivityModel crmAddActivityModel;

//   @override
//   State<EditOneVisitWidget> createState() => _EditOneVisitWidgetState();
// }

// class _EditOneVisitWidgetState extends State<EditOneVisitWidget> {
//   DateTime todayStartTime = DateTime.now();
//   DateTime todayEndTime = DateTime.now();

//   bool startTime = false;
//   bool endTime = false;
//   bool date = false;

//   int startTimeHour = 0;
//   int startTimeMinute = 0;
//   String startTimeTimeFormat = 'AM';

//   int endTimeHour = 0;
//   int endTimeMinute = 0;
//   String endTimeTimeFormat = 'AM';

//   void _onDaySelectedStartTime(DateTime day, DateTime focusedDay) {
//     setState(() {
//       todayStartTime = day;
//     });
//   }

//   void _onDaySelectedEndTime(DateTime day, DateTime focusedDay) {
//     setState(() {
//       todayEndTime = day;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Data'),
//         actions: [
//           TextButton(
//               onPressed: () {
//                 // Navigator.of(context).push(
//                 //     MaterialPageRoute(builder: (context) => const Home()));
//               },
//               child: const Text('Save')),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Card(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const DropDownListDataWidget(
//                   listOfItems: listBusinessUnit,
//                   itemName: 'Business Unit',
//                 ),
//                 const Text(
//                   'Required Fields',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 81, 38, 108)),
//                 ),
//                 const Divider(
//                     height: 30, color: Color.fromARGB(255, 81, 38, 108)),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       const Text('Visit Date : ',
//                           style: TextStyle(color: Colors.black)),
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.64,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 1),
//                           borderRadius: BorderRadius.circular(2),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child:
//                                   Text(todayStartTime.toString().split(" ")[0]),
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   date = true;
//                                 });
//                               },
//                               icon: Icon(
//                                 MdiIcons.calendar,
//                                 color: Colors.grey[500],
//                                 size: 25.0,
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 date
//                     ? SizedBox(
//                         width: MediaQuery.of(context).size.width,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Card(
//                               margin: const EdgeInsets.all(10),
//                               child: TableCalendar(
//                                 locale: "en_US",
//                                 rowHeight: 43,
//                                 headerStyle: const HeaderStyle(
//                                     formatButtonVisible: false,
//                                     titleCentered: true),
//                                 availableGestures: AvailableGestures.all,
//                                 selectedDayPredicate: (day) =>
//                                     isSameDay(day, todayStartTime),
//                                 focusedDay: todayStartTime,
//                                 firstDay: DateTime.utc(2010, 10, 16),
//                                 lastDay: DateTime.utc(2030, 10, 16),
//                                 onDaySelected: _onDaySelectedStartTime,
//                               ),
//                             ),
//                             TextButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     crmAddActivityModel.visitDate =
//                                         todayStartTime.toString().split(" ")[0];
//                                     date = false;
//                                   });
//                                 },
//                                 child: const Text(
//                                   'Ok',
//                                   style: TextStyle(color: Colors.red),
//                                 ))
//                           ],
//                         ),
//                       )
//                     : const SizedBox.shrink(),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       const Text('Start Time  :  ',
//                           style: TextStyle(color: Colors.black)),
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.61,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 1),
//                           borderRadius: BorderRadius.circular(2),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text(
//                                   ' ${startTimeHour.toString().padLeft(2, "0")} : ${startTimeMinute.toString().padLeft(2, "0")}  $startTimeTimeFormat'),
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   startTime = true;
//                                 });
//                               },
//                               icon: Icon(
//                                 MdiIcons.clock,
//                                 color: Colors.grey[500],
//                                 size: 25.0,
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 startTime
//                     ? Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 20),
//                               decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromARGB(221, 249, 237, 252),
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       NumberPicker(
//                                         minValue: 0,
//                                         maxValue: 12,
//                                         value: startTimeHour,
//                                         zeroPad: true,
//                                         infiniteLoop: true,
//                                         itemHeight: 60,
//                                         itemWidth: 80,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             startTimeHour = value;
//                                           });
//                                         },
//                                         textStyle: const TextStyle(
//                                             color: Colors.grey, fontSize: 20),
//                                         selectedTextStyle: const TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                         decoration: const BoxDecoration(
//                                             border: Border(
//                                                 top: BorderSide(
//                                                     color: Colors.black),
//                                                 bottom: BorderSide(
//                                                     color: Colors.black))),
//                                       ),
//                                       NumberPicker(
//                                         minValue: 0,
//                                         maxValue: 59,
//                                         value: startTimeMinute,
//                                         zeroPad: true,
//                                         infiniteLoop: true,
//                                         itemHeight: 60,
//                                         itemWidth: 80,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             startTimeMinute = value;
//                                           });
//                                         },
//                                         textStyle: const TextStyle(
//                                             color: Colors.grey, fontSize: 20),
//                                         selectedTextStyle: const TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                         decoration: const BoxDecoration(
//                                             border: Border(
//                                                 top: BorderSide(
//                                                     color: Colors.black),
//                                                 bottom: BorderSide(
//                                                     color: Colors.black))),
//                                       ),
//                                       Column(
//                                         children: [
//                                           GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 startTimeTimeFormat = "AM";
//                                               });
//                                             },
//                                             child: Container(
//                                               height: 50,
//                                               width: 70,
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 20,
//                                                       vertical: 10),
//                                               decoration: BoxDecoration(
//                                                 color:
//                                                     startTimeTimeFormat == "AM"
//                                                         ? const Color.fromARGB(
//                                                             255, 80, 79, 158)
//                                                         : const Color.fromARGB(
//                                                             255, 144, 143, 214),
//                                                 border: Border.all(
//                                                     color:
//                                                         startTimeTimeFormat ==
//                                                                 "AM"
//                                                             ? const Color
//                                                                 .fromARGB(255,
//                                                                 80, 79, 158)
//                                                             : const Color
//                                                                 .fromARGB(255,
//                                                                 144, 143, 214)),
//                                               ),
//                                               child: const Text(
//                                                 "AM",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 18),
//                                               ),
//                                             ),
//                                           ),
//                                           const SizedBox(
//                                             height: 10,
//                                           ),
//                                           GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 startTimeTimeFormat = "PM";
//                                               });
//                                             },
//                                             child: Container(
//                                               height: 50,
//                                               width: 70,
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 20,
//                                                       vertical: 10),
//                                               decoration: BoxDecoration(
//                                                 color:
//                                                     startTimeTimeFormat == "PM"
//                                                         ? const Color.fromARGB(
//                                                             255, 80, 79, 158)
//                                                         : const Color.fromARGB(
//                                                             255, 144, 143, 214),
//                                                 border: Border.all(
//                                                     color:
//                                                         startTimeTimeFormat ==
//                                                                 "AM"
//                                                             ? const Color
//                                                                 .fromARGB(255,
//                                                                 80, 79, 158)
//                                                             : const Color
//                                                                 .fromARGB(255,
//                                                                 144, 143, 214)),
//                                               ),
//                                               child: const Text(
//                                                 "PM",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 18),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           crmAddActivityModel.startTime =
//                                               ' ${startTimeHour.toString().padLeft(2, "0")} : ${startTimeMinute.toString().padLeft(2, "0")}  $startTimeTimeFormat';
//                                           startTime = false;
//                                         });
//                                       },
//                                       child: const Text(
//                                         'Ok',
//                                         style: TextStyle(color: Colors.red),
//                                       ))
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     : const SizedBox.shrink(),

//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       const Text('End Time  :  ',
//                           style: TextStyle(color: Colors.black)),
//                       Container(
//                         width: MediaQuery.of(context).size.width * 0.63,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey, width: 1),
//                           borderRadius: BorderRadius.circular(2),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text(
//                                   ' ${endTimeHour.toString().padLeft(2, "0")} : ${endTimeMinute.toString().padLeft(2, "0")}  $endTimeTimeFormat'),
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   endTime = true;
//                                 });
//                               },
//                               icon: Icon(
//                                 MdiIcons.clock,
//                                 color: Colors.grey[500],
//                                 size: 25.0,
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),

//                 endTime
//                     ? Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 20),
//                               decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromARGB(221, 249, 237, 252),
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       NumberPicker(
//                                         minValue: 0,
//                                         maxValue: 12,
//                                         value: endTimeHour,
//                                         zeroPad: true,
//                                         infiniteLoop: true,
//                                         itemHeight: 60,
//                                         itemWidth: 80,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             endTimeHour = value;
//                                           });
//                                         },
//                                         textStyle: const TextStyle(
//                                             color: Colors.grey, fontSize: 20),
//                                         selectedTextStyle: const TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                         decoration: const BoxDecoration(
//                                             border: Border(
//                                                 top: BorderSide(
//                                                     color: Colors.black),
//                                                 bottom: BorderSide(
//                                                     color: Colors.black))),
//                                       ),
//                                       NumberPicker(
//                                         minValue: 0,
//                                         maxValue: 59,
//                                         value: endTimeMinute,
//                                         zeroPad: true,
//                                         infiniteLoop: true,
//                                         itemHeight: 60,
//                                         itemWidth: 80,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             endTimeMinute = value;
//                                           });
//                                         },
//                                         textStyle: const TextStyle(
//                                             color: Colors.grey, fontSize: 20),
//                                         selectedTextStyle: const TextStyle(
//                                             color: Colors.black, fontSize: 20),
//                                         decoration: const BoxDecoration(
//                                             border: Border(
//                                                 top: BorderSide(
//                                                     color: Colors.black),
//                                                 bottom: BorderSide(
//                                                     color: Colors.black))),
//                                       ),
//                                       Column(
//                                         children: [
//                                           GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 endTimeTimeFormat = "AM";
//                                               });
//                                             },
//                                             child: Container(
//                                               height: 50,
//                                               width: 70,
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 20,
//                                                       vertical: 10),
//                                               decoration: BoxDecoration(
//                                                 color: endTimeTimeFormat == "AM"
//                                                     ? const Color.fromARGB(
//                                                         255, 80, 79, 158)
//                                                     : const Color.fromARGB(
//                                                         255, 144, 143, 214),
//                                                 border: Border.all(
//                                                     color: endTimeTimeFormat ==
//                                                             "AM"
//                                                         ? const Color.fromARGB(
//                                                             255, 80, 79, 158)
//                                                         : const Color.fromARGB(
//                                                             255,
//                                                             144,
//                                                             143,
//                                                             214)),
//                                               ),
//                                               child: const Text(
//                                                 "AM",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 18),
//                                               ),
//                                             ),
//                                           ),
//                                           const SizedBox(
//                                             height: 10,
//                                           ),
//                                           GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 endTimeTimeFormat = "PM";
//                                               });
//                                             },
//                                             child: Container(
//                                               height: 50,
//                                               width: 70,
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 20,
//                                                       vertical: 10),
//                                               decoration: BoxDecoration(
//                                                 color: endTimeTimeFormat == "PM"
//                                                     ? const Color.fromARGB(
//                                                         255, 80, 79, 158)
//                                                     : const Color.fromARGB(
//                                                         255, 144, 143, 214),
//                                                 border: Border.all(
//                                                     color: endTimeTimeFormat ==
//                                                             "AM"
//                                                         ? const Color.fromARGB(
//                                                             255, 80, 79, 158)
//                                                         : const Color.fromARGB(
//                                                             255,
//                                                             144,
//                                                             143,
//                                                             214)),
//                                               ),
//                                               child: const Text(
//                                                 "PM",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 18),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           endTime = false;
//                                           crmAddActivityModel.endTime =
//                                               ' ${endTimeHour.toString().padLeft(2, "0")} : ${endTimeMinute.toString().padLeft(2, "0")}  $endTimeTimeFormat';
//                                         });
//                                       },
//                                       child: const Text(
//                                         'Ok',
//                                         style: TextStyle(color: Colors.red),
//                                       ))
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     : const SizedBox.shrink(),

//                 const DropDownListDataWidget(
//                   listOfItems: listNameCustomer,
//                   itemName: 'Customer Name',
//                 ),
//                 const DropDownListDataWidget(
//                   listOfItems: listAreaCustomer,
//                   itemName: 'Area',
//                 ),
//                 // CalenderWidget(today: today),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Text(
//                   'Optional Fields',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 81, 38, 108)),
//                 ),
//                 const Divider(
//                     height: 30, color: Color.fromARGB(255, 81, 38, 108)),
//                 // SelectMulitChoiceScreen(
//                 //     defaultItem: clientData[1][0],
//                 //     listName: 'Visitor',
//                 //     items: otherVisitors),

//                 // const Divider(
//                 //   height: 10,
//                 //   indent: 30,
//                 //   endIndent: 30,
//                 // ),
//                 SelectMulitChoiceWidget(
//                     listName: 'Visitor:', items: otherVisitors),

//                 const Divider(
//                   height: 10,
//                   indent: 30,
//                   endIndent: 30,
//                 ),
//                 const SelectMulitChoiceWidget(
//                     listName: 'Brand : ', items: listBrand),

//                 const Divider(
//                   height: 10,
//                   indent: 30,
//                   endIndent: 30,
//                 ),
//                 SelectMulitChoiceWidget(listName: 'Items : ', items: items),

//                 const Divider(
//                   height: 10,
//                   indent: 30,
//                   endIndent: 30,
//                 ),

//                 const SelectMulitChoiceWidget(
//                     listName: 'Type Visit : ', items: listTypeOfVisit),

//                 const Divider(
//                   height: 10,
//                   indent: 30,
//                   endIndent: 30,
//                 ),
//                 // const DropDownListDataWidget(
//                 //   listOfItems: listBrand,
//                 //   itemName: 'Brand',
//                 // ),

//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Text(
//                     'Add Note',
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 TextField(
//                   onChanged: (value) {
//                     setState(() {
//                       crmAddActivityModel.noteVisit = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
