import 'package:flutter/material.dart';

class IndividualClocktimingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IndividualClocktimingPage({
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

class ClockBuffersPage extends StatelessWidget {
  const ClockBuffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Clock Buffers')),
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
              'Clock buffers are integrated circuits that distribute clock signals from a single source to multiple destinations with minimal delay and signal degradation. They ensure timing synchronization across various components in a system. These buffers are essential for high-speed digital designs where precise timing is critical.',
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
                  TextSpan(text: '• Output channels: '),
                  TextSpan(text: '\n     2-20+\n\n'),
                  TextSpan(text: '• Input type: '),
                  TextSpan(text: '\n     LVCMOS, LVPECL, LVDS\n\n'),
                  TextSpan(text: '• Output skew: '),
                  TextSpan(text: '\n     <50 ps\n\n'),
                  TextSpan(text: '• Operating voltage: '),
                  TextSpan(text: '\n     1.8V to 3.3V\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Server and networking hardware\n     • Memory and storage interfaces\n     • Communication systems',
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

class ClockGeneratorsPage extends StatelessWidget {
  const ClockGeneratorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Clock Generators')),
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
              'Clock generators produce precise timing signals required to synchronize digital circuits. They often combine a crystal oscillator with phase-locked loop (PLL) circuitry to output multiple frequencies. These ICs reduce the need for multiple oscillators in complex systems.',
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
                  TextSpan(text: '• Frequency range: '),
                  TextSpan(text: '\n     kHz to GHz\n\n'),
                  TextSpan(text: '• Number of outputs: '),
                  TextSpan(text: '\n     1-8+\n\n'),
                  TextSpan(text: '• Jitter: '),
                  TextSpan(text: '\n     <1 ps RMS\n\n'),
                  TextSpan(text: '• Output format: '),
                  TextSpan(text: '\n     LVCMOS, LVDS, HCSL\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Motherboards and chipsets\n     • Video/audio systems\n     • Industrial automation controllers',
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

class TimingApplicationPage extends StatelessWidget {
  const TimingApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Timing Application')),
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
              'Timing Application ICs include a broad range of chips such as timers, counters, and pulse-width modulators. These ICs are used to control timing events, delays, and waveform generation. They form the basis of many embedded systems and control loops.',
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
                  TextSpan(text: '• Timing resolution: '),
                  TextSpan(text: '\n     µs to ms\n\n'),
                  TextSpan(text: '• Output type: '),
                  TextSpan(text: '\n     PWM, pulse, analog\n\n'),
                  TextSpan(text: '• Voltage range: '),
                  TextSpan(text: '\n     2V to 15V\n\n'),
                  TextSpan(text: '• IC examples: '),
                  TextSpan(text: '\n     555 Timer, 556 Dual Timer\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Signal generation\n     • Time delays\n     • Pulse-width modulation\n     • LED flashing circuits',
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

class DriverCurrentPage extends StatelessWidget {
  const DriverCurrentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Driver Current')),
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
              'Driver Current ICs are used to control and amplify electrical signals for high-current loads such as motors, relays, and LEDs. These ICs act as intermediaries between control logic and high-power components, enabling safe and efficient current delivery.',
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
                  TextSpan(text: '• Output current: '),
                  TextSpan(text: '\n     Up to several amps\n\n'),
                  TextSpan(text: '• Voltage rating: '),
                  TextSpan(text: '\n     Up to 60V\n\n'),
                  TextSpan(text: '• Driver types: '),
                  TextSpan(text: '\n     Low-side, high-side, full-bridge\n\n'),
                  TextSpan(text: '• IC examples: '),
                  TextSpan(text: '\n     ULN2003, L293D, DRV8825\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Motor control\n     • Relay driving\n     • LED lighting systems\n     • Inductive load switching',
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

class EmbeddedPeripheralICsPage extends StatelessWidget {
  const EmbeddedPeripheralICsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Embedded Peripheral ICs')),
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
              'Embedded Peripheral ICs are integrated circuits designed to add specific functional capabilities to microcontrollers or embedded systems. These peripherals include interfaces such as UART, SPI, I2C, timers, analog-to-digital converters (ADC), and digital-to-analog converters (DAC). They simplify system design by offloading complex tasks from the main processor.',
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
                  TextSpan(text: '• Communication interfaces: '),
                  TextSpan(text: '\n     UART, SPI, I2C, CAN\n\n'),
                  TextSpan(text: '• Analog functions: '),
                  TextSpan(text: '\n     ADCs, DACs, comparators\n\n'),
                  TextSpan(text: '• Control features: '),
                  TextSpan(text: '\n     Timers, PWM, watchdog timers\n\n'),
                  TextSpan(text: '• Integration: '),
                  TextSpan(
                    text: '\n     Built into MCUs or as external ICs\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Embedded system design\n     • Sensor data acquisition\n     • Motor control\n     • Signal conversion',
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

class MicroprocessorPage extends StatelessWidget {
  const MicroprocessorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Microprocessor')),
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
              'Microprocessors are powerful integrated circuits that serve as the central processing unit (CPU) of a computer. They execute instructions from software applications by performing arithmetic, logic, control, and input/output operations. Unlike microcontrollers, microprocessors usually require external components such as memory and peripherals to function.',
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
                  TextSpan(text: '• Core architecture: '),
                  TextSpan(text: '\n     x86, ARM, RISC-V, MIPS\n\n'),
                  TextSpan(text: '• Clock speed: '),
                  TextSpan(text: '\n     Typically 1 GHz - 5 GHz\n\n'),
                  TextSpan(text: '• Data width: '),
                  TextSpan(text: '\n     8-bit, 16-bit, 32-bit, 64-bit\n\n'),
                  TextSpan(text: '• Cache memory: '),
                  TextSpan(text: '\n     L1, L2, and sometimes L3 caches\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Computers and servers\n     • Smartphones and tablets\n     • Embedded systems\n     • Industrial control units\n     • Networking and communication devices',
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

class RealTimeClocksPage extends StatelessWidget {
  const RealTimeClocksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Real Time Clocks')),
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
              'Real-Time Clocks (RTCs) are integrated circuits that keep track of the current time and date, even when the main system is powered off. They typically use a battery backup and are essential in applications requiring timekeeping, such as data logging, scheduling, or timestamping. RTCs maintain accuracy through the use of crystal oscillators.',
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
                  TextSpan(text: '• Timekeeping accuracy: '),
                  TextSpan(
                    text: '\n     ±2 to ±20 ppm depending on oscillator\n\n',
                  ),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     I2C, SPI, or Parallel\n\n'),
                  TextSpan(text: '• Voltage: '),
                  TextSpan(text: '\n     1.8V to 5.5V\n\n'),
                  TextSpan(text: '• Features: '),
                  TextSpan(
                    text:
                    '\n     Alarm, square wave output, battery backup\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Computers and servers\n     • Digital clocks and timers\n     • Embedded systems\n     • Data loggers\n     • IoT devices and wearables',
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

class SecurityAuthenticationPage extends StatelessWidget {
  const SecurityAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Security Authentication')),
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
              'Security/Authentication ICs are specialized chips designed to provide secure data storage, encryption, and identity verification in electronic systems. They offer features such as cryptographic functions, secure key storage, and unique ID provisioning. These ICs are essential for protecting sensitive data and preventing unauthorized access in modern electronics.',
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
                  TextSpan(text: '• Cryptographic Algorithms: '),
                  TextSpan(text: '\n     AES, SHA-256, ECC, RSA\n\n'),
                  TextSpan(text: '• Interface: '),
                  TextSpan(text: '\n     I2C, SPI, 1-Wire\n\n'),
                  TextSpan(text: '• Voltage Range: '),
                  TextSpan(text: '\n     1.7V to 5.5V\n\n'),
                  TextSpan(text: '• Security Features: '),
                  TextSpan(
                    text:
                    '\n     Tamper detection, secure key storage, authentication challenge-response\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Secure boot and firmware verification\n     • IoT device authentication\n     • Access control systems\n     • Consumer electronics\n     • Banking and payment systems',
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