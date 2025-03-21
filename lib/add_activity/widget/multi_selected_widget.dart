import 'package:activity_app/add_activity/model/constant.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';

class SelectMulitChoiceWidget extends StatefulWidget {
  const SelectMulitChoiceWidget({
    super.key,
    required this.items,
    required this.listName,
  });
  final List<String> items;
  final String listName;

  @override
  State<SelectMulitChoiceWidget> createState() =>
      _SelectMulitChoiceWidgetState();
}

class _SelectMulitChoiceWidgetState extends State<SelectMulitChoiceWidget> {
  List<String> _selectedItem = [];
  bool showOthersVisitors = false;

  void _showMultiSelected(List<String> items) async {
    final List<String>? results = await showDialog(
      context: context,
      builder: (context) {
        return MultiSelect(
          items: items,
        );
      },
    );

    if (results != null) {
      setState(() {
        _selectedItem = results;
        if (widget.listName == 'Visitor:') {
          crmAddActivityModel.activityWithUsers = results;
        } else if (widget.listName == 'Items : ') {
          crmAddActivityModel.itemName = results;
        } else if (widget.listName == 'Type Visit : ') {
          crmAddActivityModel.typeVisit = results;
          print(crmAddActivityModel.typeVisit);
        } else if (widget.listName == 'Brand : ') {
          crmAddActivityModel.brandName = results;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.listName,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _selectedItem
            .map((e) => ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                    minWidth: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: Text(
                    e,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
      ),
      trailing: IconButton(
        onPressed: () {
          _showMultiSelected(widget.items);
        },
        icon: const Icon(
          Icons.add,
          size: 20,
        ),
      ),
    );
  }
}

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({super.key, required this.items});

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedItems = [];
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Topic'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item, style: SupportStyle.simeBold()),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked!),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Submit'),
        )
      ],
    );
  }
}
