import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_water_delivery_app_ui/home_page.dart';

class DeliveryDay extends StatelessWidget {
  const DeliveryDay({super.key});

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
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => HomePage()));
                },
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
          Stack(children: [
            Column(
              children: [
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 380,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 249, 249),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 197, 197, 197)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'Delivery Day',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.blue.shade900)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Select Day",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                   color: Colors.blue.shade900
                                  )),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.blue.shade900)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Select Order",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                   color: Colors.blue.shade900
                                  )),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 45,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue),
                          child: 
                              Center(
                                child: Text(
                                  'Check Delivery Time',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            
                            
                          ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 25,
              right: 0,
              left: 0,
              child: Image(
                image: AssetImage(
                  'images/bottle.png',
                ),
                height: 180,
              ),
            ),
          ]) ,Spacer(),
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
