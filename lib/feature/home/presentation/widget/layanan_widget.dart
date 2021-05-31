import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/feature/home/data/menu_service_model.dart';

class LayananWidget extends StatefulWidget {
  LayananWidget({Key key}) : super(key: key);

  @override
  _LayananWidgetState createState() => _LayananWidgetState();
}

class _LayananWidgetState extends State<LayananWidget> {
  List<MenuServiceModel> _menuService = [];

  @override
  void initState() {
    super.initState();
    _menuService.add(MenuServiceModel(
        tags: 'groom', image: 'assets/imgs/grooming.png', title: 'Grooming'));
    _menuService.add(MenuServiceModel(
        tags: 'medicine',
        image: 'assets/imgs/medicine.png',
        title: 'Medicine'));
    _menuService.add(MenuServiceModel(
        tags: 'foods', image: 'assets/imgs/food.png', title: 'Foods'));
    _menuService.add(MenuServiceModel(
        tags: 'care', image: 'assets/imgs/hotel.png', title: 'Care'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 2,
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _menuService.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: DSColor.primaryPurple.withOpacity(0.4),
                          blurRadius: 6.0,
                          spreadRadius: 0.0,
                          offset: const Offset(
                            0.0,
                            6.0,
                          ),
                        )
                      ],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      _menuService[index].image,
                      width: 24,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6.0),
                ),
                Container(
                  width: 92,
                  child: Text(
                    _menuService[index].title,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
