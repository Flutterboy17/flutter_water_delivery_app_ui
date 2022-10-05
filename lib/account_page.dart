import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black,
            
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'images/men1.jpg',
                  ),
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
            height: 10,
          ),
          Text("My Account",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          ListDetails(
            title: "Account Details",
          ),
          SizedBox(
            height: 15,
          ),
          ListDetails(
            title: "Change Password",
          ),
          SizedBox(
            height: 15,
          ),
          ListDetails(
            title: "Alerts",
          ),
          SizedBox(
            height: 15,
          ),
          ListDetails(
            title: "Purchase\nHistory",
          ),
          SizedBox(
            height: 15,
          ),
          ListDetails(
            title: "My Delivery",
          ),
          Spacer(),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 70,
              color: Color(0xff498cc0),
              child: Center(),
            ),
          ),
        ],
      ),
    );
  }
}

class ListDetails extends StatelessWidget {
  const ListDetails({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
    );
  }
}
