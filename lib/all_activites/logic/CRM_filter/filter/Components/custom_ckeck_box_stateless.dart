import 'package:flutter/material.dart';

class CustomCheckBoxStateless extends StatefulWidget {
  late bool value;
  final void Function(bool k) onchanged;
  final String title;
  CustomCheckBoxStateless({
    super.key,
    required this.value,
    required this.onchanged,
    required this.title,
  });

  @override
  State<CustomCheckBoxStateless> createState() =>
      _CustomCheckBoxStatelessState();
}

class _CustomCheckBoxStatelessState extends State<CustomCheckBoxStateless> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.red[800],
          value: widget.value,
          onChanged: (k) {
            setState(() {
              widget.value = k!;
              widget.onchanged(k);
            });
          },
        ),
        SizedBox(width: 10),
        Text(widget.title),
      ],
    );
  }
}
