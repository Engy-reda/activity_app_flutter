import 'package:activity_app/all_activites/widgets/scheduled.dart';
import 'package:activity_app/view_one_activity/widget/text_row_info.dart';
import 'package:flutter/material.dart';
import 'support_style.dart';

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

class Body extends StatefulWidget {
  final List list;
  final bool seeMore;
  const Body({super.key, required this.list, required this.seeMore});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pets Cure Veterinary Clinic / area', style: SupportStyle.bold()),
        const SizedBox(height: 3.0),
        Scheduled(list: widget.list),
        const SizedBox(height: 3),
        // BrandUnitType(list: widget.list),
        ViewTextoneLineWidget(text: listBusinessUnit[1]),

        widget.seeMore
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ViewTextRowInfoWidget(
                    list: otherVisitors,
                  ),
                  const ViewTextRowInfoWidget(
                    list: listBrand,
                    color: true,
                  ),
                  ViewTextRowInfoWidget(list: items),
                  const ViewTextRowInfoWidget(list: listTypeOfVisit),
                  const ViewTextoneLineWidget(
                      text:
                          'Note:   hhvfucty hxyrsd rsxresr sdsss utftyy jhgguyguy utfuytdy jvvufyyt uhiugh ytrd ytdyrd'),
                ],
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
