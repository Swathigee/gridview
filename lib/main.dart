import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  final menuList = [
    _MenuItem("assets/images/img1.png", "Electronic" ),
      _MenuItem("assets/images/img2.jpg","Jewellery" ),
  _MenuItem("assets/images/img3.jpg", "Fashion"),
  _MenuItem("assets/images/img4.jpg","Pets" ),
  _MenuItem("assets/images/img5.png", "Furniture"),
  _MenuItem("assets/images/img6.jpg","Home"),
  _MenuItem("assets/images/img7.jpg", "Fashion"),
  _MenuItem("assets/images/img8.png", "Grocery"),
  _MenuItem("assets/images/img1.png","Electronic"),
  _MenuItem("assets/images/img2.jpg","Jewellery"),
  _MenuItem("assets/images/img3.jpg", "Fashion"),
  _MenuItem("assets/images/img4.jpg","Pets"),
  _MenuItem("assets/images/img5.png","Furniture"),
  _MenuItem("assets/images/img6.jpg","Home"),
  _MenuItem("assets/images/img7.jpg", "Fashion"),
  _MenuItem("assets/images/img8.png", "Grocery"),
  ];
  /*List menuList = [
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
    _MenuItem(Icons.ac_unit, 'Booking Schedule'),
    _MenuItem(Icons.center_focus_strong, 'Track Your Cab'),
    _MenuItem(Icons.question_answer, 'Help & Feedback'),
    _MenuItem(Icons.phone, 'Call to Transport'),
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        /*appBar: AppBar(
          automaticallyImplyLeading: false,
          //title: Text('Gym App'),
        ),*/
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15, top: 50),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 18,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 50),
                          child: Text('Anna Nagar, Chennai', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 50),
                          //Align(
                              //alignment: Alignment.topRight,
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.red,
                            size: 25,),
                        )
                        //)
                      ]
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15,),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 5, right: 15),
                      width: 330,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFD6D6D6)),
                          color: Color(0xFFD6D6D6),
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Colors.grey[600]),
                          ),
                          hintText: 'Find Mobile Phones and more...',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0, right: 10, left: 10, top: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/poster.jpg', width: 450, height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  /*GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    //childAspectRatio: 1 / 1,
                    children: [
                      //...myImageAndCaption.map(
                            (i) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                              shape: CircleBorder(),
                              elevation: 3.0,
                              child: Image.asset(
                                i.first,
                                fit: BoxFit.fitWidth,
                                height: 100,
                                width: 100,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(i.last),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),*/
    Padding(
    padding: const EdgeInsets.only(right: 0, top: 0, bottom: 0),
          child: GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      //crossAxisSpacing: 5.0,
      //mainAxisSpacing: 5.0,
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    itemBuilder: (context, position) {
    return Padding(
    padding: const EdgeInsets.all(14.0),
    child: InkWell(
    onTap: () {},
    child: Center(
    child: Column(
    children: [
    Center(
    child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(250.0)),
    elevation: 5,
    child: Padding(
    padding: const EdgeInsets.all(4.2),
      child: Image.asset(
        menuList[position].image,
        height: 24,
      ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
    alignment: Alignment.bottomCenter,
    child: Text(
    menuList[position].title,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 11, color: Colors.black),
    ),
    ),
    )
    ],
    ),
    )));
    },
    itemCount: menuList.length,
    ),
    )
                ]
            )
        )
    );
  }
}

class _MenuItem {
  final String image;
  final String title;

  _MenuItem(this.image, this.title);
}
