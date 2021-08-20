import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoreOptionList extends StatelessWidget {
  final List<List> _moreOptions = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'MarketPlace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];

  final User user;

  const MoreOptionList({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 1 + _moreOptions.length,
          itemBuilder: (ctx, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: UserCard(user: user),
              );
            }

            final option = _moreOptions[index - 1];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: _Option(
                icon: option[0],
                color: option[1],
                title: option[2],
              ),
            );
          }),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _Option({Key key, this.icon, this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(title),
      child: Row(
        children: [
          Icon(
            icon,
            size: 38.0,
            color: color,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Flexible(
              child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
            ),
            overflow: TextOverflow.ellipsis,
          ))
        ],
      ),
    );
  }
}
