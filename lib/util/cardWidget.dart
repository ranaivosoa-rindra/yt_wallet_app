// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cardWidget extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMouth;
  final int expiryYear;
  final color;

  const cardWidget({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMouth,
    required this.expiryYear,
    this.color,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                 style: TextStyle(
                   color: Colors.white
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 55
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "\$" + balance.toString(),
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 28,
                  fontWeight: FontWeight.bold  
                ),
              ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(cardNumber.toString(), style: TextStyle(color: Colors.white)),
                //card expiry date
                Text(expiryMouth.toString() +"/"+ expiryYear.toString(), style: TextStyle(color: Colors.white))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
