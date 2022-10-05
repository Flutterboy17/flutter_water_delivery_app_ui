import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_water_delivery_app_ui/call_driver.dart';
import 'package:flutter_water_delivery_app_ui/supplier_history.dart';

import 'account_page.dart';
import 'delivery_day.dart';
import 'delivery_history.dart';
import 'my_account_.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => AccountPage()));
                },
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Color(0xff56aad4),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black,
              child: GestureDetector(
                onTap: (){
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => MyAccount()));
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'images/men1.jpg',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Divider(
          color: Colors.blueGrey,
        ),
        Spacer(),
        Text(
          "My Water",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xff56aad4),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '"Delivery"',
          style: TextStyle(
            fontSize: 28,
            color: Color(0xff56aad4),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeRos(
              image: 'images/box.png',
              text: 'My Order',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => DeliveryHistory()));
              },
            ),
            HomeRos(
              image: 'images/chronometer.png',
              text: 'Supplier History',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => SupliersHistory()));
              },
            ),
            HomeRos(
              image: 'images/delivery-truck.png',
              text: 'Delivery History',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => DeliveryHistory()));
              },
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeRos(
              image: 'images/24-hours.png',
              text: 'Delivery Day',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => DeliveryDay()));
              },
            ),
            HomeRos(
              image: 'images/phone-call.png',
              text: 'Call Driver',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CallDriver()));
              },
            ),
            HomeRos(
              image: 'images/qr-code.png',
              text: 'Verify QR',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => DeliveryHistory()));
              },
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
            width: 300,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Your Previous Order",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Image(
                      image: AssetImage(
                        'images/bottle.png',
                      ),
                      height: 80,
                    ),
                    Text(
                      "Order No: 123456",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.blue,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber,
                      ),
                      child: Center(
                          child: Text(
                        "Send Feedback",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                    )
                  ],
                ),
              ],
            )),
        Spacer(),
        ClipPath(
          clipper: WaveClipperOne(reverse: true),
          child: Container(
            height: 110,
            color: Color(0xff498cc0),
            child: Center(),
          ),
        ),
      ]),
    );
  }
}

class HomeRos extends StatelessWidget {
  const HomeRos({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String image;
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue)),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Image.asset(
              image,
              color: Colors.blue,
              height: 50,
              width: 50,
            ),
          ),
        )
      ],
    );
  }
}
