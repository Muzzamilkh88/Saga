import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Opacity(opacity: 0.6, child: Image.asset('assets/PatternDoodle.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.green, blurRadius: 10, offset: Offset(0, 1)),
                  ],
                  color: Colors.black,
                  image: DecorationImage(image: AssetImage('assets/HoneyComb.webp'), fit: BoxFit.cover, opacity: 0.4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 8, bottom: 5),
                        child: Icon(
                          Icons.cancel,
                          size: 30,
                          color: Colors.green.withOpacity(0.6),
                        ),
                      )),
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.withOpacity(0.7),
                        border: Border.all(color: Colors.green.withOpacity(0.8), width: 2),
                      ),
                      child: Image.asset('assets/Asset 3.png')),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'ENTER YOUR REFERRAL CODE',
                      style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Please enter your referral code to \ncontinue and play the game. A referral \ncode is required to access the game \nand enroll in the airdrop',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent), color: Colors.black12, borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 118,
                            decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(8)),
                            child: const Center(
                              child: Text(
                                '2000000000',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                              height: 45,
                              width: 80,
                              decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                child: Text(
                                  'ENTER',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
