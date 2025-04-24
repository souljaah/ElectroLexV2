import 'package:flutter/material.dart';

class IndividualMicromotorsPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IndividualMicromotorsPage({
    super.key,
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

class BuzzersPage extends StatelessWidget {
  const BuzzersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Buzzers')),
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
                  'assets/1b.jpg',
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
              'Buzzers are audio signaling devices that produce sound through piezoelectric or electromagnetic means. They are used to alert users or signal conditions like errors or completion of tasks. Buzzers are compact, reliable, and commonly found in consumer electronics, alarms, and timers.',
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
                  TextSpan(text: '• Type: '),
                  TextSpan(
                    text: '\n     Piezoelectric or Electromechanical\n\n',
                  ),
                  TextSpan(text: '• Voltage: '),
                  TextSpan(text: '\n     3V to 12V DC\n\n'),
                  TextSpan(text: '• Sound level: '),
                  TextSpan(text: '\n     70-100 dB\n\n'),
                  TextSpan(text: '• Frequency: '),
                  TextSpan(text: '\n     Typically around 2-4 kHz\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Alarm systems\n     • Microwave ovens and kitchen timers\n     • Electronic toys\n     • Industrial warning systems',
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
                  'assets/2b.jpg',
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
            const SizedBox(height: 2), // Spacing between images
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/3b.jpg',
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

class MEMSMicrophonesPage extends StatelessWidget {
  const MEMSMicrophonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('MEMS Microphones')),
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
                  'assets/4b.jpg',
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
              'MEMS (Micro-Electro-Mechanical Systems) microphones are tiny microphones built using silicon wafer technology. They convert sound into electrical signals and are known for their high performance, low power consumption, and small size. These microphones are ideal for mobile devices and voice recognition systems.',
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
                  TextSpan(text: '• Sensitivity: '),
                  TextSpan(text: '\n     -42 dBV ±3 dB\n\n'),
                  TextSpan(text: '• Signal-to-noise ratio (SNR): '),
                  TextSpan(text: '\n     58-65 dB\n\n'),
                  TextSpan(text: '• Output: '),
                  TextSpan(text: '\n     Analog or Digital (PDM/I²S)\n\n'),
                  TextSpan(text: '• Voltage: '),
                  TextSpan(text: '\n     1.5V to 3.6V\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Smartphones and tablets\n     • Voice assistants and smart speakers\n     • Hearing aids\n     • Wearable electronics',
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
                  'assets/5b.jpg',
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
                  'assets/6b.jpg',
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

class MicroMotorPage extends StatelessWidget {
  const MicroMotorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Micro Motor')),
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
                  'assets/7b.jpg', // Placeholder image for Infrared Remote Receiver
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
              'Micro motors are small-sized electric motors used to produce mechanical movement or vibration. These motors can be DC, stepper, or servo types and are widely used in portable electronics, robotics, and medical equipment. Their compact size allows integration in tight spaces with low power requirements.',
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
                  TextSpan(text: '• Type: '),
                  TextSpan(text: '\n     DC, Stepper, or Servo\n\n'),
                  TextSpan(text: '• Voltage: '),
                  TextSpan(text: '\n     1.5V to 12V DC\n\n'),
                  TextSpan(text: '• Speed: '),
                  TextSpan(
                    text: '\n     Up to 30,000 RPM (varies by type)\n\n',
                  ),
                  TextSpan(text: '• Torque: '),
                  TextSpan(
                    text:
                    '\n     Typically low, suitable for lightweight tasks\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Vibration alerts in mobile phones\n     • Precision movement in medical devices\n     • Mini robots and drones\n     • Small appliances and toys',
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
                  '8b.jpg', // Pin diagram image for Infrared Remote Receiver
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
                  'assets/9b.jpg', // Replace with another pin diagram image
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

class SpeakersPage extends StatelessWidget {
  const SpeakersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Speakers')),
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
                  'assets/10b.jpg', // Replace with your LED image
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
              'Speakers are transducers that convert electrical signals into sound waves, allowing users to hear audio output. They come in various sizes and configurations, ranging from tiny earbud drivers to large woofers. Speakers are essential in audio systems for communication, entertainment, and alerts.',
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
                  TextSpan(text: '• Impedance: '),
                  TextSpan(text: '\n     4Ω to 8Ω\n\n'),
                  TextSpan(text: '• Power rating: '),
                  TextSpan(text: '\n     0.5W to 10W\n\n'),
                  TextSpan(text: '• Frequency response: '),
                  TextSpan(text: '\n     100 Hz to 20 kHz\n\n'),
                  TextSpan(text: '• Diameter: '),
                  TextSpan(text: '\n     Varies (e.g., 20mm to 100mm)\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Mobile phones and laptops\n     • Bluetooth audio systems\n     • TVs and home theaters\n     • Public address systems',
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
                  'assets/11b.jpg', // Replace with your LED pin diagram image
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
                  'assets/12b.jpg', // Replace with another pin diagram image
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