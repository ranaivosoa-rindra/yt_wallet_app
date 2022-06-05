// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_string_escapes, avoid_print, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yt_wallet_app/util/buttonWidget.dart';
import 'package:yt_wallet_app/util/cardWidget.dart';
import 'package:yt_wallet_app/util/listTileWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 30
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.home,
                  size: 29,
                  color: Colors.pink[200],
                )
              ),

              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.settings,
                  size: 29,
                  color: Colors.grey,
                )
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " cards",
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
        
                    // plus button
                    InkWell(
                      child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[400],
                          ),
                          child: Icon(Icons.add)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 25,
              ),
        
              //cards
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    cardWidget(
                      balance: 5210.11,
                      cardNumber: 12345678,
                      expiryMouth: 10,
                      expiryYear: 24,
                      color: Colors.deepPurple[400],
                    ),
                    cardWidget(
                      balance: 452.22,
                      cardNumber: 16347678,
                      expiryMouth: 3,
                      expiryYear: 11,
                      color: Colors.blue[400],
                    ),
                    cardWidget(
                      balance: 15000.11,
                      cardNumber: 82345671,
                      expiryMouth: 8,
                      expiryYear: 50,
                      color: Colors.green[400],
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 25,
              ),
        
              SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
        
              SizedBox(
                height: 25,
              ),
        
              //3buttons
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //send button
                    ButtonWidget(
                      iconImagePath: 'lib/icons/send-money.png', 
                      buttonText: 'Send',
                    ),
        
                    //pay button
                    ButtonWidget(
                      iconImagePath: 'lib/icons/credit-card.png', 
                      buttonText: 'Pay',
                    ),
        
                    //bills button
                    ButtonWidget(
                      iconImagePath: 'lib/icons/bill.png', 
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
        
              //column -> stats + transaction
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // statistics
                    ListTileWidget(
                      iconImagePath: 'lib/icons/statistics.png',
                      tileSubtitle: 'Statistics',
                      tileTitle: 'Payment and Income',
                    ),
        
                    // transaction
                    ListTileWidget(
                      iconImagePath: 'lib/icons/transaction.png',
                      tileSubtitle: 'Transactions',
                      tileTitle: 'Transactions history',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
      
  }
}
