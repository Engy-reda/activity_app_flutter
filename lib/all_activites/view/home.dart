import 'package:activity_app/add_activity/view/add_activity_screen.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import '../logic/CRM_filter/data_filters.dart';
import '../model/card_filter_model.dart';
import '../widgets/activity_card.dart';
import '../widgets/glass_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  DateTime _selectedDate = DateTime.now();

  List<int>? filterIndex;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 0));
  }

  @override
  void setState(VoidCallback fn) {
    _resetSelectedDate;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: true,
            primary: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GlassBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Activities",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => AddActivityScreen(),
                              ));
                        },
                        child: Icon(
                          Icons.add,
                          size: 23.0,
                          color: Colors.blue[800],
                        ),
                      ),
                      TextButton.icon(
                        style: ButtonStyle(
                          overlayColor: WidgetStatePropertyAll(Colors.white30),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.only(right: 1, left: 1),
                          ),
                        ),
                        icon: Icon(
                          Icons.refresh_rounded,
                          size: 23.0,
                          color: Colors.blue[800],
                        ),
                        onPressed: () => setState(() => _resetSelectedDate()),
                        label: Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverAppBar(
            forceMaterialTransparency: true,
            backgroundColor: Colors.white,
            expandedHeight: 108,
            flexibleSpace: FlexibleSpaceBar(
              background: CalendarTimeline(
                height: 60,
                width: 50,
                showYears: true,
                initialDate: _selectedDate,
                firstDate: DateTime.now().subtract(
                  const Duration(days: 365 * 7),
                ),
                lastDate: DateTime.now().add(const Duration(days: 365 * 7)),
                onDateSelected: (date) => setState(() => _selectedDate = date),
                leftMargin: 2.0,
                dayNameFontSize: 12.0,
                monthColor: Colors.grey[900],
                dayColor: Colors.black,
                dayNameColor: Theme.of(context).cardColor,
                activeDayColor: Theme.of(context).cardColor,
                activeBackgroundDayColor: Colors.blue[800],
                fontSize: 16.0,
                locale: 'en',
              ),
            ),
          ),
          SliverAppBar(
            forceMaterialTransparency: true,
            toolbarHeight: 35.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: GlassBox(
                child: DataFilters(
                  data: cardFilterModel,
                  filterTitle: filterTitles,
                  showAnimation: true,
                  // get list of index of selected filter
                  recentSelectedDataIndex: (List<int>? index) {
                    setState(() {
                      filterIndex = index;
                    });
                  },
                  listOfAllSelectedFiltersOptions: (List<int>? int) {
                    setState(() {
                      filterIndex = int;
                    });
                  },
                  style: FilterStyle(
                    buttonColor: Colors.blue[800],
                    buttonColorText: Colors.white,
                    filterBorderColor: Colors.grey[400],
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: cardFilterModel.length,
            itemBuilder: (context, index) {
              List list = cardFilterModel[index];
              if (filterIndex == null || filterIndex!.contains(index)) {
                return ActivityCard(list: list, today: _selectedDate);
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
