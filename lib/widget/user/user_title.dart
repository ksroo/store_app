import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icons;

  UserTile({
    @required this.subTitle,
    @required this.title,
    @required this.icons,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.grey[200],
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {},
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Icon(
            icons,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
