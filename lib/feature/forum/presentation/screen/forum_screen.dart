import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/feature/forum/data/category_service_model.dart';

class ForumScreen extends StatefulWidget {
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  List<CategoryServiceModel> _categoryService = [];
  int _currentIndex = 0;
  String titleSelected = 'All';

  @override
  void initState() {
    super.initState();
    _categoryService.add(CategoryServiceModel(
        tags: 'all', image: 'assets/imgs/all.png', title: 'All'));
    _categoryService.add(CategoryServiceModel(
        tags: 'cat', image: 'assets/imgs/cat.png', title: 'Cat'));
    _categoryService.add(CategoryServiceModel(
        tags: 'dog', image: 'assets/imgs/dog.png', title: 'Dog'));
    _categoryService.add(CategoryServiceModel(
        tags: 'virus', image: 'assets/imgs/virus.png', title: 'Virus'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Forum',
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
                'Category',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Container(
                height: 85,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 2,
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _categoryService.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                            titleSelected = _categoryService[index].title;
                          });
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: DSColor.primaryPurple
                                          .withOpacity(0.4),
                                      blurRadius: 6.0,
                                      spreadRadius: 0.0,
                                      offset: const Offset(
                                        0.0,
                                        6.0,
                                      ),
                                    )
                                  ],
                                  color: _currentIndex == index
                                      ? DSColor.primaryPurple
                                      : Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  _categoryService[index].image,
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
                                _categoryService[index].title,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                titleSelected,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
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
                        'Bagaimana cara menghilangkan bau mulut pada kucing?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '100 comments - 90 likes - Mei 16',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: DSColor.secondaryOrange,
                          ),
                        ],
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
                        'Tips membuat dog food',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '999 comments - 999 likes - Mei 01',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            color: DSColor.secondaryOrange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
