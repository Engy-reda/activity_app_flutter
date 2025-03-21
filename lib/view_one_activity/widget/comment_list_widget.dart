import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:comment_tree/data/comment.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';

class CommentListWidget extends StatefulWidget {
  const CommentListWidget({super.key});

  @override
  State<CommentListWidget> createState() => _CommentListWidgetState();
}

class _CommentListWidgetState extends State<CommentListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => CommentTreeWidget<Comment, Comment>(
            Comment(
                avatar: 'null',
                userName: 'null',
                content: 'felangel made felangel/cubit_and_beyond public '),
            [
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content: 'A futter template generator which helps teams'),
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content:
                      'A Dart template generator which helps teams generator which helps teams generator which helps teams'),
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content: 'A Dart template generator which helps teams'),
              Comment(
                  avatar: 'null',
                  userName: 'null',
                  content:
                      'A Dart template generator which helps teams generator which helps teams '),
            ],
            treeThemeData:
                TreeThemeData(lineColor: Colors.green[500]!, lineWidth: 1),
            avatarRoot: (context, data) => const PreferredSize(
              preferredSize: Size.fromRadius(18),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/profile1.png'),
              ),
            ),
            avatarChild: (context, data) => const PreferredSize(
              preferredSize: Size.fromRadius(12),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            contentChild: (context, data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'dangngocduc',
                          style: SupportStyle.simeLight(),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${data.content}',
                          style: SupportStyle.simeBoldGrey(),
                          // style: Theme.of(context).textTheme.caption?.copyWith(
                          //     fontWeight: FontWeight.w300, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.bold),
                    // style: Theme.of(context).textTheme.caption!.copyWith(
                    //     color: Colors.grey[700], fontWeight: FontWeight.bold),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text('1 m'),
                          SizedBox(
                            width: 24,
                          ),
                          Text('Like'),
                          SizedBox(
                            width: 24,
                          ),
                          Text('Reply'),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            contentRoot: (context, data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('dangngocduc', style: SupportStyle.bold()
                            // style: Theme.of(context).textTheme.caption!.copyWith(
                            //     fontWeight: FontWeight.w600, color: Colors.black),
                            ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text('${data.content}', style: SupportStyle.simeBold()),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: SupportStyle.simeBold(),
                    //  Theme.of(context).textTheme.caption!.copyWith(
                    //     color: Colors.grey[700], fontWeight: FontWeight.bold),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text('1 m'),
                          SizedBox(
                            width: 24,
                          ),
                          Text('Like'),
                          SizedBox(
                            width: 24,
                          ),
                          Text('Reply'),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
