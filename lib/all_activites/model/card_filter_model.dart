import 'package:intl/intl.dart';

List<String> filterTitles = ['Name', 'Scheduled', 'Brand', 'Unit'];

//  clientData List length must be == filterTitles List length.
List<List> cardFilterModel = [
  [
    'Ahmed Magdy Zaki',
    DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
    'MSD',
    'B2',
  ],
  [
    'Ali Magdy ',
    DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
    'Brandname',
    'B1',
  ],
  [
    'Hassan Zaki',
    DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
    'MSD',
    'B2',
  ],
  [
    'Galal Zaki',
    DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
    'Brandname',
    'B1',
  ],
  [
    'Ibrahem Magdy',
    DateFormat('EEE d-MM-yyyy').format(DateTime.now()),
    'MSD',
    'B1',
  ],
];
