import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Schedule',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Mei 2021',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Center(
                  child: Card(
                    color: DSColor.primaryPurple,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 2,
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pets_rounded,
                            color: DSColor.secondaryOrange,
                          ),
                        ],
                      ),
                      title: Text(
                        'Dr. Milo ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '2pm - Mei 29',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.watch_later_outlined,
                        color: DSColor.secondaryOrange,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Center(
                  child: Card(
                    color: DSColor.primaryPurple,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 2,
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pets_rounded,
                            color: DSColor.secondaryOrange,
                          ),
                        ],
                      ),
                      title: Text(
                        'Dr. Caca ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '8am - Mei 29',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                child: Center(
                  child: Card(
                    color: DSColor.primaryPurple,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 2,
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pets_rounded,
                            color: DSColor.secondaryOrange,
                          ),
                        ],
                      ),
                      title: Text(
                        'Grooming',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '10am - Mei 25',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
