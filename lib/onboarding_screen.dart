import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen background image
          Positioned.fill(
            child: Image.asset(
              'lib/assets/12.png', // Your background image
              fit: BoxFit.cover,
            ),
          ),

          // Overlay content
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4), // Optional overlay for better contrast
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ElectroLex',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.blueAccent,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Your Ultimate Electronic\nComponent Reference',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 332),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                          shape: StadiumBorder(),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
