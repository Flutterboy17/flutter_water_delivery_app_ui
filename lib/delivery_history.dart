import 'package:flutter/material.dart';

class DeliveryHistory extends StatelessWidget {
  const DeliveryHistory({super.key});

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
        children: [
          Divider(
            color: Colors.blueGrey,
          ),
          Image.asset('images/bottle.png'),
          Text(
            "One Time/",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xff56aad4),
            ),
          ),
          Text(
            "Weekly Time Order",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Color(0xff56aad4),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Unit Price',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff56aad4),
                      fontSize: 16),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff56aad4),
                      fontSize: 16),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Total",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff56aad4),
                      fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          TablesRow(
            text: 'Water Charges',
            text1: 'Rs.100',
            text2: '5',
            text3: 'Rs.400',
          ),
          SizedBox(
            height: 5,
          ),
          TablesRow(
            text: 'Bottle Charges',
            text1: 'Rs.400',
            text2: '2',
            text3: 'Rs.800',
          ),
          SizedBox(
            height: 5,
          ),
          TablesRow(
            text: 'Delivery\nCharges      ',
            text1: '     Rs.0.00',
            text2: '0',
            text3: 'Rs.0.00',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total Amount',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff56aad4),
                  ),
                ),
                SizedBox(
                  width: 105,
                ),
                Text(
                  "7",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff56aad4),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rs.1200',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff56aad4),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xff56aad4),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Place Order',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TablesRow extends StatelessWidget {
  const TablesRow({
    Key? key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);
  final String text;
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff56aad4),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff56aad4),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff56aad4),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            text3,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff56aad4),
            ),
          ),
        ],
      ),
    );
  }
}
