import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/feature/home/data/promo_service_model.dart';

class PromoWidget extends StatefulWidget {
  @override
  _PromoWidgetState createState() => _PromoWidgetState();
}

class _PromoWidgetState extends State<PromoWidget> {
  List<PromoServiceModel> _promoService = [];
  @override
  void initState() {
    super.initState();
    _promoService.add(PromoServiceModel(
        tags: 'groom',
        image: 'assets/imgs/kucing2.png',
        title: 'Grooming',
        color: DSColor.fourthPink));
    _promoService.add(PromoServiceModel(
        tags: 'medicine',
        image: 'assets/imgs/anjing.png',
        title: 'Care',
        color: DSColor.thirdYellow));
    _promoService.add(PromoServiceModel(
        tags: 'foods',
        image: 'assets/imgs/kucing1.png',
        title: 'Foods',
        color: DSColor.secondaryOrange));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        itemCount: _promoService.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  width: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _promoService[index].color,
                    image: DecorationImage(
                        image: AssetImage(_promoService[index].image),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerRight),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Container(
                                color: DSColor.primaryPurple,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Mei 2021',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Container(
                                color: DSColor.primaryPurple,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    _promoService[index].title,
                                    style: TextStyle(
                                        fontSize: 28.0, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
