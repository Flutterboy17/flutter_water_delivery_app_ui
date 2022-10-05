import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_water_delivery_app_ui/supplier_details.dart';

class SupliersHistory extends StatelessWidget {
  const SupliersHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            padding: const EdgeInsets.all(8.0),
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
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Divider(
            color: Colors.blueGrey,
          ),
          
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Suppliers In",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff56aad4),
                  ),
                ),
                Container(
                  width: 130,
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Sorting",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  '"ABC" Area',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff56aad4),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
             padding:EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 230,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 5),
                      hintText: "Search your favorite supplier",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text("Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 300,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                           color: Color.fromARGB(255, 197, 197, 197)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          'Supplier "A"',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Price: 65',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Certified: N',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: Colors.blueGrey,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rating 4.5",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupplierDetails()));
                          },
                          child: Container(
                              height: 35,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text("Order Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: const [
                    Categories(
                      imageUrl: 'images/drone.png',
                      title: 'Delivery Options',
                  ),
                  SizedBox(height: 20),
                
                    Categories(
                      imageUrl: 'images/to-do-list.png',
                      title: 'Add to List',
                  ),
                    SizedBox(
                      height:  20
                    ),
                   
                    Categories(
                      imageUrl: 'images/price-tag.png',
                      title: 'Tag Price',
                  ),
                   SizedBox(
                      height:  20
                    ),
                    Categories(
                      imageUrl: 'images/location.png',
                      title: 'Locations',
                  )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height:20,),
          Image.asset('images/arrow.png', color: Colors.blue.shade100,
          height: 60,),
           Spacer(),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 90,
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
    Key? key, required this.title, required this.imageUrl,
  }) : super(key: key);
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 197, 197, 197).withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Image(
            image: AssetImage(
              imageUrl,
            ),
            color: Colors.blue,
            height: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 9,
              color: Color(0xff56aad4),
            ),
          )
        ],
      ),
    );
  }
}
