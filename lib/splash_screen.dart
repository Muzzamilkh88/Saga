import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/PatternDoodle.png'),
          fit: BoxFit.fill,
          opacity: 0.6,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Spacer(),
            Image.asset(
              'assets/Logo.png',
              width: width / 1.3,
            ),
            const SizedBox(height: 35),
            Container(
              width: width / 1.4,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Colors.lightGreen,
                    Colors.lightGreen,
                    Colors.lightGreenAccent,
                    Colors.lightGreenAccent,
                    Colors.lightGreenAccent,
                    Colors.lightGreen,
                    Colors.lightGreen,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.5, 1.5),
                        )
                      ],
                    ),
                    child: const Icon(
                      Icons.ac_unit,
                      color: Colors.blue,
                      // size: 20,
                    ),
                  ),
                  const Text(
                    'CONNECT SOLANA WALLET',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(1.8, 1.8),
                        ),
                      ],
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'CONNECT YOUR SOLANA WALLET',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'TO START MINING AIRDROP',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Image.asset('assets/Image.png'),
          ],
        ),
      ),
    );
  }
}
