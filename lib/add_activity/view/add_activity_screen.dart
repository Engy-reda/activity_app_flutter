import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/add_activity/widget/add_one_visit_widget.dart';
import 'package:activity_app/add_activity/widget/header_widget.dart';
import 'package:activity_app/all_activites/model/card_filter_model.dart';
import 'package:flutter/material.dart';

class AddActivityScreen extends StatefulWidget {
  const AddActivityScreen({super.key});

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  bool addNewVisit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Add activity'),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    crmAddActivityModelList.add(crmAddActivityModel);
                    print(crmAddActivityModel);
                    addNewVisit = false;
                    Navigator.of(context).pop();
                  });
                },
                child: const Text('Save'))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  HeaderWidget(list: cardFilterModel[1]),
                  const SizedBox(
                    height: 20,
                  ),
                  const AddOneVisitWidget()
                ],
              ),
            ),
          ),
        ));
  }
}
