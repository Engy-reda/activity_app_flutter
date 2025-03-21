import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';

class ViewTextRowInfoWidget extends StatelessWidget {
  final List<String> list;
  final bool color;
  const ViewTextRowInfoWidget(
      {super.key, required this.list, this.color = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list
          .map((e) => ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                  minWidth: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Text(
                  ' $e , ',
                  style: color
                      ? SupportStyle.light().copyWith(
                          color: Colors.blue.shade400,
                          fontSize: 12.8,
                          fontWeight: FontWeight.bold,
                        )
                      : SupportStyle.simeBoldGrey(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  // softWrap: false,
                  // overflow: TextOverflow.fade,
                ),
              ))
          .toList(),
    );
  }
}

class ViewTextoneLineWidget extends StatelessWidget {
  final String text;
  const ViewTextoneLineWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.6,
        minWidth: MediaQuery.of(context).size.width * 0.1,
      ),
      child: Text(
        text,
        style: SupportStyle.simeBoldGrey(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        // softWrap: false,
        // overflow: TextOverflow.fade,
      ),
    );
  }
}
