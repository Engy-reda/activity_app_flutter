import 'package:activity_app/all_activites/model/card_filter_model.dart';
import 'package:activity_app/view_one_activity/widget/activity_card_widget.dart';
import 'package:activity_app/view_one_activity/widget/bottom_comment_field.dart';
import 'package:activity_app/view_one_activity/widget/comment_list_widget.dart';
import 'package:flutter/material.dart';

class ViewActivityScreen extends StatefulWidget {
  const ViewActivityScreen({super.key});

  @override
  State<ViewActivityScreen> createState() => _ViewActivityScreenState();
}

class _ViewActivityScreenState extends State<ViewActivityScreen> {
  final DateTime _selectedDate = DateTime.now();
  int likeCount = 0;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          controller: ScrollController(),
          physics: const ScrollPhysics(parent: PageScrollPhysics()),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ActivityCardWidget(
                        list: cardFilterModel[0], today: _selectedDate),
                  ],
                ),
              ),
            ];
          },
          body: const Column(
            children: [
              Expanded(child: CommentListWidget()),
              BottomCommentFieldWidget()
            ],
          )),
    );
  }
}
