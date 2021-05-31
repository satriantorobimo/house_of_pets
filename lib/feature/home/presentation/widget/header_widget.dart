import 'package:flutter/material.dart';

import 'avatar_widget.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 13),
              Row(
                children: [
                  Text('Location', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 8),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              Text('Cisauk', style: TextStyle(fontSize: 20))
            ],
          ),
          AvatarWidget(
              'https://cdn4.iconfinder.com/data/icons/halloween-avatar-flat/64/halloween-25-512.png')
        ],
      ),
    );
  }
}
