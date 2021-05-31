import 'package:flutter/material.dart';

import 'package:house_of_pets/feature/home/presentation/widget/card_widget.dart';
import 'package:house_of_pets/feature/home/presentation/widget/header_widget.dart';
import 'package:house_of_pets/feature/home/presentation/widget/layanan_widget.dart';
import 'package:house_of_pets/feature/home/presentation/widget/promo_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          flexibleSpace: Container(
              margin: const EdgeInsets.only(top: 24), child: HeaderWidget()),
          elevation: 0.0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 24),
          CardWidget(),
          SizedBox(height: 24),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Layanan', style: TextStyle(fontSize: 12)),
                    Text('Lihat semua', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: 16),
              LayananWidget()
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Promo', style: TextStyle(fontSize: 12)),
                    Text('Lihat semua', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: 8),
              PromoWidget()
            ],
          )
        ]),
      ),
    );
  }
}
