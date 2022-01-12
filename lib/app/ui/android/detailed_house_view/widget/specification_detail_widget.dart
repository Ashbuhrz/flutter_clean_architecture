import 'package:flutter/material.dart';
import 'package:immo_spot/app/ui/shared_widget/height_box.dart';
import 'package:immo_spot/app/ui/theme/app_colors.dart';

class SpecificationDetailWidget extends StatelessWidget {
  //Not Wrapped inside GetView because, it doesn't needed to.
  const SpecificationDetailWidget(
      {Key? key, required this.title, this.fieldValue, this.isLast = false})
      : super(key: key);

  final String title;
  final String? fieldValue;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightBox(10),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: ColorConst.greyColor),
        ),
        const HeightBox(1),
        Text(
          fieldValue ?? '',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const HeightBox(10),
        if (!isLast!)
          Divider(
            color: Colors.grey.shade400,
            thickness: 1,
          ),
      ],
    );
  }
}
