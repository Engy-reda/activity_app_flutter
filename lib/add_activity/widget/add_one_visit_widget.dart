import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/add_activity/widget/choice_date_widget.dart';
import 'package:activity_app/add_activity/widget/choice_time_widget.dart';
import 'package:activity_app/add_activity/widget/drop_down_list_data_widget.dart';
import 'package:activity_app/add_activity/widget/multi_selected_widget.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';

const List<String> listBrand = <String>['MSD', 'BrandName'];

const List<String> listNameCustomer = <String>[
  'engy reda soliman',
  'ahmed',
  'eyad'
];
const List<String> listAreaCustomer = <String>['egypt', 'minia', 'suadi'];
const List<String> listTypeOfVisit = <String>['sales', 'colection', 'general'];
final List<String> otherVisitors = [
  'engy Reda soilman',
  'Pets Veterinary Clinic',
  'Eyad',
  'Hassan'
];
final List<String> items = ['cc++', 'java', 'dart', 'flutter'];
const List<String> listBusinessUnit = <String>['B1', 'B2'];

class AddOneVisitWidget extends StatefulWidget {
  const AddOneVisitWidget({super.key});

  @override
  State<AddOneVisitWidget> createState() => _AddOneVisitWidgetState();
}

class _AddOneVisitWidgetState extends State<AddOneVisitWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DropDownListDataWidget(
            listOfItems: listBusinessUnit,
            itemName: 'Business Unit',
          ),
          const Text(
            'Required Fields',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 81, 38, 108),
            ),
          ),
          const Divider(
            height: 30,
            color: Color.fromARGB(255, 81, 38, 108),
          ),
          const ChoiceDateWidget(),
          const ChoiceTimeWidget(
            time: 'Start Time',
            width: 0.6,
            margin: 0,
          ),
          const ChoiceTimeWidget(
            time: 'End Time',
            width: 0.6,
            margin: 8,
          ),
          const DropDownListDataWidget(
            listOfItems: listNameCustomer,
            itemName: 'Customer Name',
          ),
          const DropDownListDataWidget(
            listOfItems: listAreaCustomer,
            itemName: 'Area',
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Optional Fields',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 81, 38, 108)),
          ),
          const Divider(
            height: 30,
            color: Color.fromARGB(255, 81, 38, 108),
          ),
          SelectMulitChoiceWidget(
            listName: 'Visitor:',
            items: otherVisitors,
          ),
          const SelectMulitChoiceWidget(
            listName: 'Brand : ',
            items: listBrand,
          ),
          SelectMulitChoiceWidget(
            listName: 'Items : ',
            items: items,
          ),
          const SelectMulitChoiceWidget(
            listName: 'Type Visit : ',
            items: listTypeOfVisit,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Add Note',
              style: SupportStyle.bold(),
              textAlign: TextAlign.left,
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                crmAddActivityModel.noteVisit = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
