import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String urlPhoto;

  const AvatarWidget(this.urlPhoto);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                image: DecorationImage(
                  image: NetworkImage(urlPhoto ??
                      'https://media.marimo.web.id/internal/files/ca74f4a9664d2cce4296e7adb417bd9b.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                  color: Color(0xFFF0F0F0),
                  width: 2.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
