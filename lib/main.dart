import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Ministry of tourism'),
      home: Scaffold(
        appBar: AppBar(title: Text('MINISTRY OF TOURISM',style: TextStyle(
          fontSize: 20, letterSpacing: 10
        )),
        backgroundColor: const Color.fromARGB(255, 120, 218, 9),
        ),
        body: ListView(
          children: [
            MyListItem(placename:'Taj Mahal' ,imgurl:'assets/images/taj_mahal.jpg', price: 2300 ),
            MyListItem(placename:'Red Fort' ,imgurl:'assets/images/red_fort.jpg', price: 1500 ),
            MyListItem(placename:'India Gate' ,imgurl:'assets/images/india_gate.jpg', price: 600 ),
            MyListItem(placename:'Golden Temple' ,imgurl:'assets/images/golden_temple.jpg', price: 700 ),
            MyListItem(placename:'Qutub Minar' ,imgurl:'assets/images/qutub_minar.jpg', price: 500 ),
          ],
        ),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final String placename, imgurl;
  final double price;
  MyListItem({super.key, required this.placename, required this.imgurl, required this.price});

  final inrFormat = NumberFormat.currency(locale: 'en_IN', symbol: 'Ticket Price - Rs.',decimalDigits: 2);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey, width: 0.2),
      ),
      elevation: 1,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: const Color.fromARGB(148, 45, 95, 26),
            width: 200,
            height: 200,
            child: Image.asset(imgurl,width: 160,height: 150, fit: BoxFit.cover),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(placename, style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 20),
              Text(inrFormat.format(price),style: TextStyle(
                fontSize: 18,
              )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 31, 184, 112),
                  foregroundColor: Colors.white
                ),
                child: Text("Plan Trip")
              )
            ],
          )
        ],
      ),
    );
  }
}
