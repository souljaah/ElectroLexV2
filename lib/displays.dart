import 'package:flutter/material.dart';

class IndividualDisplayDriversPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IndividualDisplayDriversPage({
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

class DarlingtonTransistorArrayPage extends StatelessWidget {
  const DarlingtonTransistorArrayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Darlington Transistor Array')),
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
                  'assets/137.jpg',
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
              'A Darlington Transistor Array combines two transistors in a single package to achieve high current gain. It acts like a powerful switch, amplifying low current signals into higher current outputs. These arrays are ideal for driving loads such as relays, lamps, and stepper motors. They are commonly used in digital logic interfacing and motor control.',
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
                  TextSpan(text: '• Voltage rating: '),
                  TextSpan(text: '\n     Up to 50V\n\n'),
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     Up to 500 mA per channel\n\n'),
                  TextSpan(text: '• Input compatibility: '),
                  TextSpan(text: '\n     TTL/CMOS logic\n\n'),
                  TextSpan(text: '• Number of channels: '),
                  TextSpan(text: '\n     Typically 7 or 8\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Relay and motor drivers\n     • Printer and scanner control systems\n     • Industrial automation interfaces',
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
                  'assets/138.jpg',
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
                  'assets/139.jpg',
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

class DriverICsPage extends StatelessWidget {
  const DriverICsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Driver ICs')),
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
              'A Darlington Transistor Array combines two transistors in a single package to achieve high current gain. It acts like a powerful switch, amplifying low current signals into higher current outputs. These arrays are ideal for driving loads such as relays, lamps, and stepper motors. They are commonly used in digital logic interfacing and motor control.',
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
                  TextSpan(text: '• Voltage rating: '),
                  TextSpan(text: '\n     Up to 50V\n\n'),
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     Up to 500 mA per channel\n\n'),
                  TextSpan(text: '• Input compatibility: '),
                  TextSpan(text: '\n     TTL/CMOS logic\n\n'),
                  TextSpan(text: '• Number of channels: '),
                  TextSpan(text: '\n     Typically 7 or 8\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Relay and motor drivers\n     • Printer and scanner control systems\n     • Industrial automation interfaces',
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

class LCDDisplaysModulesPage extends StatelessWidget {
  const LCDDisplaysModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('LCD Displays Modules')),
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
              'Driver ICs are integrated circuits designed to control and amplify signals to drive external components such as LEDs, motors, or displays. They provide the necessary current and voltage levels to operate high-power devices from low-power control signals. Driver ICs help in reducing the complexity of circuits by integrating multiple driving functions. They are vital in signal conditioning and interface control.',
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
                  TextSpan(text: '• Operating voltage: '),
                  TextSpan(text: '\n     3.3V to 15V\n\n'),
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     Up to 2A\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     SPI, I2C, or Parallel\n\n'),
                  TextSpan(text: '• Channels: '),
                  TextSpan(text: '\n     Single or multi-channel\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Display and lighting control\n     • Motor and solenoid driving\n     • Signal interfacing in embedded systems',
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

class LEDDisplaysDriversPage extends StatelessWidget {
  const LEDDisplaysDriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('LED Displays Drivers')),
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
                  'assets/146.jpg', // Replace with your LED image
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
              'LED Display Drivers are ICs designed to drive multiple LED segments in displays, commonly used in seven-segment displays, numeric displays, and large matrix displays. They help in controlling the brightness and color of LEDs and provide ease of interfacing with controllers. These ICs often use PWM (Pulse Width Modulation) techniques for brightness control and support common cathode or anode configurations.',
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
                  TextSpan(text: '• Voltage range: '),
                  TextSpan(text: '\n     3.3V to 5V\n\n'),
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     20mA to 100mA per segment\n\n'),
                  TextSpan(text: '• Communication interface: '),
                  TextSpan(text: '\n     I2C, SPI\n\n'),
                  TextSpan(text: '• PWM Control: '),
                  TextSpan(text: '\n     Yes\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Digital clocks\n     • Signage and displays\n     • Home appliances',
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
                  'assets/147.jpg', // Replace with your LED pin diagram image
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
                  'assets/148.jpg', // Replace with another pin diagram image
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

class LEDSegmentDisplayPage extends StatelessWidget {
  const LEDSegmentDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('LED Segment Display')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top image for the component
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/149.jpg', // Replace with your asset image path
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
            // Description Section
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'LED Segment Displays are commonly used in numeric displays and digital clocks, consisting of a series of LEDs arranged in a figure-eight pattern. Each segment can be individually lit to form numbers and characters. These displays are widely used due to their simplicity, ease of control, and low power consumption.',
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
                  TextSpan(text: '• Display type: '),
                  TextSpan(text: '\n     7-segment, 14-segment\n\n'),
                  TextSpan(text: '• Voltage range: '),
                  TextSpan(text: '\n     3.3V, 5V\n\n'),
                  TextSpan(text: '• Current: '),
                  TextSpan(text: '\n     20mA to 30mA per segment\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     Direct drive, multiplexed\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Digital clocks\n     • Calculators\n     • Appliances\n     • Meters',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Pin Diagram Section
            const Text(
              'Pin Diagram',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            // First Pin Diagram Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/150.jpg', // Replace with your asset image path
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
            const SizedBox(height: 8),
            // Second Pin Diagram Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.7,
                child: Image.asset(
                  'assets/151.jpg', // Replace with your asset image path
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

class MOSDriversPage extends StatelessWidget {
  const MOSDriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('MOS Drivers')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/152.jpg', // Replace with your phototransistor image
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
            // Description Section
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'MOSFET drivers are used to control the gate of a MOSFET (Metal-Oxide-Semiconductor Field-Effect Transistor) for switching high current and voltage. MOS drivers enable efficient switching by providing high current to charge and discharge the gate capacitance rapidly. These drivers are often used in applications requiring high-speed switching, such as power supplies, motor control, and power electronics.',
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
                  TextSpan(text: '• Supply voltage: '),
                  TextSpan(text: '\n     5V to 12V\n\n'),
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     1A to 10A\n\n'),
                  TextSpan(text: '• Switching speed: '),
                  TextSpan(text: '\n     High (ns range)\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Power supplies\n     • Motor control\n     • Inverter circuits',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Pin Diagram Section with Two Images
            const Text(
              'Pin Diagram',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            // First Pin Diagram Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/153.jpg', // Replace with first pin diagram image path
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
            // Second Pin Diagram Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.7,
                child: Image.asset(
                  'assets/154.jpg', // Replace with second pin diagram image path
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

class OLEDDisplaysModulesPage extends StatelessWidget {
  const OLEDDisplaysModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('OLED Displays Modules')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Image Section
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/155.jpg', // Replace with your actual image asset path
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
            // Description Section
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'OLED (Organic Light Emitting Diode) Displays are made from organic materials that emit light when electricity is applied. These displays are energy-efficient, offer high contrast, and have thin profiles, making them suitable for modern electronics. OLED modules are commonly used for small displays in wearables, portable devices, and other low-power applications.',
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
                  TextSpan(text: '• Display types: '),
                  TextSpan(text: '\n     Monochrome, RGB\n\n'),
                  TextSpan(text: '• Resolution: '),
                  TextSpan(text: '\n     128x64, 256x128, etc.\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     I2C, SPI\n\n'),
                  TextSpan(text: '• Operating voltage: '),
                  TextSpan(text: '\n     3.3V, 5V\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Wearable devices\n     • Smartwatches\n     • Embedded applications',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Pin Diagram Section
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
                  'assets/156.jpg', // Replace with your pin diagram image asset path
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
                  'assets/157.jpg', // Replace with another image if required
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

class VFDDisplaysModulesPage extends StatelessWidget {
  const VFDDisplaysModulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('VFD Displays Modules')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main SSR Image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/158.jpg', // Replace with your SSR image
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
            // Description Section
            const Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'VFD (Vacuum Fluorescent Display) Modules are used for displaying information in consumer electronics, primarily in older electronics like car audio systems, home appliances, and clocks. They offer high brightness and contrast, with a wide viewing angle. VFDs have a distinctive glow, which is often seen in older digital clocks and other legacy systems.',
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
                  TextSpan(text: '• Voltage: '),
                  TextSpan(text: '\n     5V, 12V\n\n'),
                  TextSpan(text: '• Display types: '),
                  TextSpan(text: '\n     Alphanumeric, Numeric\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     SPI, Parallel\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Digital clocks\n     • Consumer electronics\n     • Appliances and gadgets',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Pin Diagram Section
            const Text(
              'Pin Diagram',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            // First pin diagram image
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/159.jpg', // Replace with the actual pin diagram image asset
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
            const SizedBox(height: 8),
            // Second pin diagram image (if applicable)
            Center(
              child: SizedBox(
                height: 220,
                width: screenWidth * 0.7,
                child: Image.asset(
                  'assets/160.jpg', // Replace with another pin diagram image if available
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