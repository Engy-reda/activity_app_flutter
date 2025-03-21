import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';

class DropDownListDataWidget extends StatefulWidget {
  final List<String> listOfItems;
  final String itemName;
  const DropDownListDataWidget(
      {super.key, required this.itemName, required this.listOfItems});

  @override
  State<DropDownListDataWidget> createState() => _DropDownListDataWidgetState();
}

class _DropDownListDataWidgetState extends State<DropDownListDataWidget> {
  String dropdownValue = '';
  @override
  void initState() {
    dropdownValue = widget.listOfItems.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField(
        value: dropdownValue,
        items: widget.listOfItems.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value, child: Text(value, style: SupportStyle.simeBold()));
        }).toList(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            if (widget.itemName == 'Customer Name') {
              crmAddActivityModel.customerName = value;
            } else if (widget.itemName == 'Area') {
              crmAddActivityModel.customerArea = value;
            } else if (widget.itemName == 'Business Unit') {
              crmAddActivityModel.businessUnit = value;
              print(crmAddActivityModel.businessUnit);
            }
          });
        },
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 30,
        decoration: InputDecoration(
            labelStyle: SupportStyle.bold(),
            labelText: widget.itemName,
            border: const OutlineInputBorder()),
      ),
    );
  }
}
