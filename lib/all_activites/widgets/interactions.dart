import 'package:activity_app/all_activites/widgets/action_count.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:activity_app/view_one_activity/view/view_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class InterActions extends StatefulWidget {
  const InterActions({super.key});

  @override
  State<InterActions> createState() => _InterActionsState();
}

bool liked = false;

bool favorite = false;

_liked() {
  if (liked == false) {
    liked = true;
  } else {
    if (liked != false) {
      liked = false;
    }
  }
}

_saved() {
  if (favorite == false) {
    favorite = true;
  } else {
    if (favorite != false) {
      favorite = false;
    }
  }
}

class _InterActionsState extends State<InterActions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionCount(),
        Container(
          margin: EdgeInsets.only(left: 7, right: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    _liked();
                    liked ? likeCount++ : likeCount--;
                  });
                },
                icon: Icon(
                  liked ? MdiIcons.thumbUp : MdiIcons.thumbUpOutline,
                  color: liked ? Colors.blue.shade800 : Colors.grey[500],
                  size: 22.0,
                ),
                label: Text(
                  'Like',
                  style: liked
                      ? SupportStyle.light().copyWith(
                          color: Colors.blue.shade800,
                        )
                      : SupportStyle.light(),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                  style: const ButtonStyle(),
                  onPressed: () {
                    showBarModalBottomSheet(
                      expand: true,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                          color: Colors.white, child: ViewActivityScreen()),
                    );
                  },
                  icon: Icon(
                    MdiIcons.commentOutline,
                    color: Colors.grey[500],
                    size: 21.0,
                  ),
                  label: Text('Comment', style: SupportStyle.light()),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _saved();
                    favorite ? savedCount++ : savedCount--;
                  });
                },
                child: Icon(
                  favorite ? MdiIcons.star : MdiIcons.starOutline,
                  color:
                      favorite ? Colors.amber.shade700 : Colors.grey.shade500,
                  size: 25.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
