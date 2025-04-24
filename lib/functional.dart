import 'package:flutter/material.dart';

class IndividualFunctionalModulesPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IndividualFunctionalModulesPage({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Image not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(description, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

class SensorModulesPage extends StatelessWidget {
  const SensorModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Sensor Modules')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/140.jpg',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Image not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sensor modules are integrated units that combine a sensor with necessary circuitry to provide an easy-to-use interface for measuring physical quantities. These modules are commonly used in electronics projects and embedded systems to monitor parameters like temperature, humidity, light, or motion. They offer flexibility, simplicity, and are essential in making sensor-based applications more accessible for developers.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Power Supply: '),
                  TextSpan(text: '\n     Typically 3.3V to 5V\n\n'),
                  TextSpan(text: '• Output: '),
                  TextSpan(
                    text:
                    '\n     Analog or Digital (varies by sensor type)\n\n',
                  ),
                  TextSpan(text: '• Response time: '),
                  TextSpan(text: '\n     Dependent on the sensor type\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     I²C, SPI, or GPIO\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Used in IoT projects to measure environmental parameters\n     • Smart home systems for automation (e.g., motion detection, temperature monitoring)\n     • Robotics and automation for sensing the environment',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Pin Diagram',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/141.jpg',
                  // Pin diagram image
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Pin diagram not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 8), // Spacing between images
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.7,
                child: Image.asset(
                  'assets/142.jpg',
                  // Second image
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Pin diagram not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VAudioModulesPage extends StatelessWidget {
  const VAudioModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('V-Audio Modules')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/143.jpg', // Placeholder image for Infrared Remote Receiver
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Image not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'V-Audio modules are used to interface audio signals in embedded systems or electronic devices. These modules allow for audio input, output, or processing and are typically used in applications such as sound recording, playback, or voice recognition. They simplify audio integration by providing pre-configured audio interfaces and functionality for developers.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Power Supply: '),
                  TextSpan(text: '\n     5V (standard)\n\n'),
                  TextSpan(text: '• Input/Output: '),
                  TextSpan(text: '\n     Analog or Digital\n\n'),
                  TextSpan(text: '• Audio quality: '),
                  TextSpan(
                    text: '\n     Typically 16-bit or 24-bit resolution\n\n',
                  ),
                  TextSpan(text: '• Compatibility: '),
                  TextSpan(
                    text:
                    '\n     Works with microcontrollers like Arduino, Raspberry Pi, or ESP32\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Audio playback for devices like MP3 players or home automation systems\n     • Voice recognition and audio feedback in IoT projects\n     • Integration with digital assistants or interactive systems',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Pin Diagram',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  '144.jpg', // Pin diagram image for Infrared Remote Receiver
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Pin diagram not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 8), // Spacing between images
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.7,
                child: Image.asset(
                  'assets/145.jpg', // Replace with another pin diagram image
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.broken_image, size: 64, color: Colors.grey),
                        SizedBox(height: 8),
                        Text("Pin diagram not found"),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}