import 'package:flutter/material.dart';
import 'support_style.dart';

class BrandUnitType extends StatefulWidget {
  final List list;
  const BrandUnitType({super.key, required this.list});

  @override
  State<BrandUnitType> createState() => _ClientAndBrandState();
}

class _ClientAndBrandState extends State<BrandUnitType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // spacing: 12.0,
      children: [
        Text(widget.list[2], style: SupportStyle.simeBoldGrey()),
        Text(
          '/',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(color: Colors.grey.shade600),
        ),
        Text(widget.list[3], style: SupportStyle.simeBoldGrey()),
        Text(
          '/',
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(color: Colors.grey.shade600),
        ),
        Text('Collection', style: SupportStyle.simeBoldGrey()),
      ],
    );
  }
}
