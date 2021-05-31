import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: DSColor.primaryPurple.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 1.5,
                offset: const Offset(
                  0.0,
                  5.5,
                ),
              )
            ],
            image: DecorationImage(
                image: NetworkImage(
                    'https://pngimg.com/uploads/cat/cat_PNG50497.png'),
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerRight),
            color: DSColor.primaryPurple),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 210,
                child: Text(
                    'Promo Grooming Kutu hanya Rp. 50.000. Order sekarang!',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 24),
              Container(
                  width: 100,
                  height: 35,
                  child: RaisedButton(
                    onPressed: () {},
                    color: DSColor.secondaryOrange,
                    child: Text('Order'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
