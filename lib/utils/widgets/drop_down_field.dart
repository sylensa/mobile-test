import 'package:flutter/material.dart';
import 'package:netafim_mobile/utils/app_localizations.dart';

class DropDownField extends StatelessWidget {
  const DropDownField({
    Key? key,
    this.value,
    required this.onTap,
    this.enabled = true,
  }) : super(key: key);
  final bool enabled;
  final String? value;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: enabled ? Colors.white : Colors.grey[200],
        ),
        child: Row(
          children: [
            Expanded(child: Text(value ?? 'unassigned'.tr(context),overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w500),),),
            const Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ),
      ),
    );
  }
}
