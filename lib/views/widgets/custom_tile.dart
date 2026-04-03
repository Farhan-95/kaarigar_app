import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/text_style.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });
  final String title;
  final String subTitle;
  final bool trailing;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: myTextStyle(Colors.black, 16, true)),
            Spacer()
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Text(subTitle, style: myTextStyle(Colors.black, 18, false)),
            Spacer(),
            trailing
                ? IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.forward),
            )
                : SizedBox.shrink(),
          ],
        ),
        Divider(),
      ],
    );
  }
}
