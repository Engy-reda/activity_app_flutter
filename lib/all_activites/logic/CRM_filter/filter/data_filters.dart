import 'package:activity_app/all_activites/logic/CRM_filter/filter/Models/filter_model.dart';
import 'package:activity_app/all_activites/logic/CRM_filter/filter/Models/style.dart';
import 'package:flutter/material.dart';
import 'filter_options.dart';
import 'helperFunctions/filter_functions.dart';

/// Generates a horizontal list of filters from the  given data********
///
///
class DataFilters extends StatefulWidget {
  /// Nested List of data from while filter is to be shown
  final List<List> data;

  /// title of each filter category
  final List<String> filterTitle;

  /// this function returns the new list of selected index
  final void Function(List<int>?) listOfAllSelectedFiltersOptions;

  ///
  final FilterStyle style;

  ///
  final bool showAnimation;

  /// All fields are mandatory
  /// `selected_data_index` can be empty initailly
  const DataFilters({
    super.key,
    required this.data,
    required this.filterTitle,
    required this.listOfAllSelectedFiltersOptions,
    required this.style,
    required this.showAnimation,
    required Null Function(List<int>? index) recentSelectedDataIndex,
  });

  @override
  State<DataFilters> createState() => _DataFiltersState();
}

class _DataFiltersState extends State<DataFilters> {
  List<FilterModel> filters = [];

  late List<List> listOfAllSelectedFiltersOptions = [];

  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    filters = createFilters(widget.data, widget.filterTitle);

    /// initializing empty selected filters
    initializeEmptySelectedIndexOptionList();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  void initializeEmptySelectedIndexOptionList() {
    listOfAllSelectedFiltersOptions.clear();
    List.generate(
      widget.filterTitle.length,
      (index) => listOfAllSelectedFiltersOptions.add([]),
    );
  }

  final ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeOut,
    );
  }

  List allSelectedOptions = [];
  @override
  Widget build(BuildContext context) {
    // if (widget.showAnimation &&
    // isNestedListEmpty(list_of_all_selected_filtersOptions))
    var height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
        controller: _scrollController,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // reverse: true,
        itemCount: filters.length,
        itemBuilder: (ctx, i) {
          // if (i == filter.length) {
          // //   print('last scrollll');
          // _scrollToBottom();

          return Row(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                decoration: BoxDecoration(
                  borderRadius: widget.style.borderRadius,
                  color: Colors.white,
                  border: listOfAllSelectedFiltersOptions[i].isEmpty
                      ? Border.all(color: widget.style.filterBorderColor!)
                      : Border.all(color: Colors.black, width: 2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    ///clear search box if filter is selected
                    _searchController.clear();

                    /// filters pop up
                    ///
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      isDismissible: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      builder: (BuildContext context) {
                        return FilterOptions(
                          title: filters[i].title,
                          style: widget.style,
                          height: height,

                          ///
                          filters: filters,

                          ///
                          filterIndex: i,
                          listOfAllSelectedFiltersOptions:
                              listOfAllSelectedFiltersOptions,
                          selectedOption: (List<List> selectedOptions) {
                            listOfAllSelectedFiltersOptions = selectedOptions;

                            /// pass option values and get index of it
                            List<int> indexs = searchWithSelectedFitler(
                              listOfAllSelectedFiltersOptions,
                            );
                            // .expand((element) => element)
                            // .toList()); // converting 2d list into 1d list and passing it as args for search()
                            // var list1d = list2d.expand((x) => x).toList();

                            widget.listOfAllSelectedFiltersOptions(indexs);
                          },
                        );
                      },
                    );
                  },
                  child: Center(
                    child: Row(
                      children: [
                        Text(filters[i].title),
                        if (filters[i].options.isNotEmpty)
                          const Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ),
                ),
              ),
              if (i == filters.length - 1)
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 230,
                      margin: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextField(
                        autofocus: false,
                        controller: _searchController,
                        onChanged: (String k) {
                          /// delete all seletced filters if user starts to type in search box
                          if (k.length == 1) {
                            initializeEmptySelectedIndexOptionList();
                          }
                          List<int> indexs = searchFromText(k);
                          widget.listOfAllSelectedFiltersOptions(indexs);
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search all',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              /// reset
              if (i == filters.length - 1)
                Row(
                  children: [
                    // const SizedBox(width: 5),
                    const VerticalDivider(indent: 10, endIndent: 10),
                    // const SizedBox(width: 5),
                    TextButton(
                      child: Text(
                        'Clear All',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        _searchController.clear();
                        initializeEmptySelectedIndexOptionList();
                        widget.listOfAllSelectedFiltersOptions(null);
                      },
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }

  void resetFilter(int totalDataLength) {
    return;
  }

  List<int> searchWithSelectedFitler(List<List> selectedFilter) {
    List<int> filteredIndexes = [];
    // print(selected_filter);

    for (int i = 0; i < widget.data.length; i++) {
      bool shouldAdd = true;
      // print('--------');
      for (int j = 0; j < selectedFilter.length; j++) {
        // print(
        // 'j= $j ${selected_filter[j]} is not empty ${selected_filter[j].isNotEmpty}');
        // print(
        // ' IF THAT NOT CONTAINS ${widget.data[i][j]}  = ${!selected_filter[j].contains(widget.data[i][j])}');
        if (selectedFilter[j].isNotEmpty &&
            !selectedFilter[j].contains(widget.data[i][j])) {
          shouldAdd = false;
          // print('break');
          break;
        }
      }
      if (shouldAdd) {
        filteredIndexes.add(i);
        // print('add $i');
      }
    }

    return filteredIndexes;
  }

  /// search from seach box
  List<int> searchFromText(String word) {
    List<int> indexes = [];

    for (int i = 0; i < widget.data.length; i++) {
      for (int j = 0; j < widget.data[i].length; j++) {
        // if (widget.data[i][j].contains(word)) {
        if (widget.data[i][j].toString().toLowerCase().contains(
              word.toLowerCase(),
            )) {
          indexes.add(i);
          // print('${widget.data[i]}- ${widget.data[i][j]} contains $word');
          // }
        }
      }
    }
    return indexes;
  }

  /// FUNCTION TO CHECK IF NESTED LIST IS EMPTY
  bool isNestedListEmpty(List<List> data) {
    for (var element in data) {
      if (element.isNotEmpty) {
        return false;
      }
    }
    return true;
  }
}
