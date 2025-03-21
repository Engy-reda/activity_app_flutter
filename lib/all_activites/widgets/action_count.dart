import 'package:activity_app/all_activites/model/card_filter_model.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:activity_app/view_one_activity/widget/circular_modal.dart';
import 'package:activity_app/view_one_activity/widget/view_members_like_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActionCount extends StatefulWidget {
  const ActionCount({super.key});

  @override
  State<ActionCount> createState() => _ActionCountState();
}

int likeCount = 999;

int commentCount = 999;

int savedCount = 999;

class _ActionCountState extends State<ActionCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // liked ?
        GestureDetector(
          onTap: () => showAvatarModalBottomSheet(
            expand: true,
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => ViewMembersLikesWidget(
              likedUsers: cardFilterModel,
            ),
          ),
          child: Text(
            '${NumberFormat.compact().format(likeCount)} like',
            style: SupportStyle.light(),
          ),
        ),
        // : SizedBox(),
        Row(
          //  spacing: 7,
          children: [
            Text(
              '${NumberFormat.compact().format(commentCount)} comments',
              style: SupportStyle.light(),
            ),
            Text(
              '${NumberFormat.compact().format(savedCount)} saved',
              style: SupportStyle.light(),
            ),
          ],
        ),
      ],
    );
  }
}
