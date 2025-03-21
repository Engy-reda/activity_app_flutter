import 'package:flutter/material.dart';

import '../data_filters.dart';
import 'Components/custom_ckeck_box_stateless.dart';
import 'Models/filter_model.dart';

class FilterOptions extends StatelessWidget {
  const FilterOptions({
    super.key,
    required this.height,
    required this.filters,
    required this.filterIndex,
    required this.selectedOption,
    required this.listOfAllSelectedFiltersOptions,
    required this.title,
    required this.style,
  });

  final double height;
  final List<FilterModel> filters;
  final int filterIndex;
  final void Function(List<List>) selectedOption;
  final List<List> listOfAllSelectedFiltersOptions;
  final String title;
  final FilterStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilterHeader(text: title),
          Expanded(
            child: ListView.builder(
              itemCount: filters[filterIndex].options.length,
              itemBuilder: (ctx, j) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text('${filters[filterIndex].options[j]}'),
                      ),
                      CustomCheckBoxStateless(
                        value: listOfAllSelectedFiltersOptions[filterIndex]
                            .contains(filters[filterIndex].options[j]),
                        onchanged: (k) {
                          if (k) {
                            ///
                            listOfAllSelectedFiltersOptions[filterIndex].add(
                              '${filters[filterIndex].options[j]}',
                            );
                          } else {
                            ///
                            listOfAllSelectedFiltersOptions[filterIndex].remove(
                              '${filters[filterIndex].options[j]}',
                            );
                          }
                        },
                        title: '',
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 45.0,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: style.buttonColor,
              ),
              child: TextButton(
                onPressed: () {
                  selectedOption(listOfAllSelectedFiltersOptions);
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: style.buttonColorText,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterHeader extends StatelessWidget {
  final String text;
  const FilterHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 3,
            width: 50,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
