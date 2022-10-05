import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: () {},
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
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "My Account",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Categories(
                title: "Personal Information",
                imageUrl: 'images/profile.png',
              ),
              Categories(
                title: "Change Password",
                imageUrl: 'images/padlock.png',
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Categories(
                title: "Alerts",
                imageUrl: 'images/warning.png',
              ),
              Categories(
                title: "Payment History",
                imageUrl: 'images/payment.png',
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Categories(
                title: "My Delivery",
                imageUrl: 'images/fast-delivery.png',
              ),
            ],
          ),
          Spacer(),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 110,
              color: Color(0xff498cc0),
              child: Center(),
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 1) // changes position of shadow
                  ),
            ],
          ),
          child: Image(
            image: AssetImage(
              imageUrl,
            ),
            color: Colors.blue.shade700,
          ),
        )
      ],
    );
  }
}
