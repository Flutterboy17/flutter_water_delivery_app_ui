import 'package:flutter/material.dart';


class SupplierDetails extends StatelessWidget {
  const SupplierDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children:  [
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
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
               
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 550,
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
                          'Supplier "A"',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        Text(
                          '"ABC" Area',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff56aad4),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 25,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.amber,
                              size: 25,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple.shade900),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "General Details",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Supplier Name: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "John Peter",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Contact NO: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "+923057352546",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.shade800),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Technical Details",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Membrane Type: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Membrane Quality:",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Production Capacity: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "PSQCA Certified:",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "TDS: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Certified Minrals:",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "CTN Food Authority Certified: ",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 40,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue),
                          child: Center(
                            child: Text(
                              "Proceed",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: const[
                                SubCategories(
                                  text: 'lorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Lorem Ipsume',
                                  title: '"User Name"',
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                 SubCategories(
                                  text:
                                      'lorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Lorem Ipsume',
                                  title: '"User Name"',
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                 SubCategories(
                                  text:
                                      'lorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Loremlorem Ipsum Lorem Ipsume',
                                  title: '"User Name"',
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top:15,
              right: 0,
              left: 0,
              child: Image(
                image: AssetImage(
                  'images/bottle.png',
                ),
                height: 180,
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class SubCategories extends StatelessWidget {
  const SubCategories({
    Key? key, required this.title, required this.text,
  }) : super(key: key);
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.blue),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
            ],
          )
        ],
      )),
    );
  }
}
