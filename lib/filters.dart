import 'package:flutter/material.dart';

class IndividualFiltersOptimizationPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IndividualFiltersOptimizationPage({
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

class ActiveFiltersPage extends StatelessWidget {
  const ActiveFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Active Filters')),
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
                  'assets/4.jpg', // Resistor image
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
              'Active filters use active components like operational amplifiers, transistors, or integrated circuits in combination with passive components to filter signals. They can amplify the filtered signal and offer better control over frequency response. Unlike passive filters, active filters require an external power source.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications & Applications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     Up to several MHz\n\n'),
                  TextSpan(text: '• Filter Types: '),
                  TextSpan(
                    text:
                    '\n     Low-pass, high-pass, band-pass, band-stop\n\n',
                  ),
                  TextSpan(text: '• Components: '),
                  TextSpan(text: '\n     Op-Amps, resistors, capacitors\n\n'),
                  TextSpan(text: '• Gain: '),
                  TextSpan(text: '\n     Adjustable\n\n'),
                  TextSpan(text: '• Power Supply: '),
                  TextSpan(text: '\n     Required\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Audio signal processing\n     • Communication systems\n     • Biomedical instruments\n     • Analog-to-digital conversion preconditioning',
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
                  'assets/2.jpg',
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
                  'assets/5.png',
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

class CeramicFiltersPage extends StatelessWidget {
  const CeramicFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Ceramic Filters')),
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
                  'assets/6.jpg', // Resistor image
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
              'Ceramic filters are passive electronic filters made from piezoelectric ceramic materials. They are commonly used to filter specific frequencies with high stability and low cost. These filters are compact and suited for fixed-frequency operations.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications & Applications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     455 kHz to 10 MHz\n\n'),
                  TextSpan(text: '• Insertion Loss: '),
                  TextSpan(text: '\n     Low\n\n'),
                  TextSpan(text: '• Bandwidth: '),
                  TextSpan(text: '\n     Narrow\n\n'),
                  TextSpan(text: '• Temperature Stability: '),
                  TextSpan(text: '\n     Good\n\n'),
                  TextSpan(text: '• Package: '),
                  TextSpan(text: '\n     Through-hole or SMD\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • IF filtering in AM/FM radios\n     • TV tuners\n     • Communication receivers\n     • Signal processing circuits',
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
                  'assets/2.jpg',
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
                  'assets/7.png',
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

class CommonModeFiltersPage extends StatelessWidget {
  const CommonModeFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Common Mode Filters')),
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
                  'assets/8.jpg', // Resistor image
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
              'Common mode filters are designed to block noise signals that are common to both lines of a differential pair while allowing the desired differential signal to pass. These filters are used to suppress electromagnetic interference (EMI) and radio-frequency interference (RFI).',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications & Applications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Common Mode Impedance: '),
                  TextSpan(text: '\n     100Ω to several kΩ\n\n'),
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     Up to GHz\n\n'),
                  TextSpan(text: '• Current Rating: '),
                  TextSpan(text: '\n     Typically up to several Amps\n\n'),
                  TextSpan(text: '• Type: '),
                  TextSpan(text: '\n     SMD or through-hole\n\n'),
                  TextSpan(text: '• Filter Structure: '),
                  TextSpan(
                    text: '\n     Ferrite core with bifilar windings\n\n',
                  ),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • USB and HDMI interfaces\n     • Power supply lines\n     • Signal integrity protection\n     • Automotive electronics',
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
                  'assets/2.jpg',
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
                  'assets/9.jpg',
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

class EMCFiltersPage extends StatelessWidget {
  const EMCFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('EMC Filters')),
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
                  'assets/10.jpg', // Resistor image
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
              'EMC (Electromagnetic Compatibility) filters are used to reduce electromagnetic interference (EMI) in electronic devices. These filters prevent unwanted high-frequency noise or spikes from reaching sensitive components or being emitted by the device. EMC filters are commonly used in power supplies and communication equipment.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            const Text(
              'Specifications & Applications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     10 kHz to several GHz\n\n'),
                  TextSpan(text: '• Insertion Loss: '),
                  TextSpan(text: '\n     High attenuation for EMI\n\n'),
                  TextSpan(text: '• Common Mode Rejection: '),
                  TextSpan(text: '\n     Excellent\n\n'),
                  TextSpan(text: '• Package Type: '),
                  TextSpan(text: '\n     Through-hole, SMD\n\n'),
                  TextSpan(text: '• Components: '),
                  TextSpan(text: '\n     Capacitors, inductors, ferrites\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Power supplies\n     • Audio systems\n     • Communication equipment\n     • Industrial automation\n     • Automotive electronics\n     • Home appliances',
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
                  'assets/2.jpg',
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
                  'assets/3.jpg',
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

class FerriteBeadsPage extends StatelessWidget {
  const FerriteBeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Ferrite Beads')),
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
                  'assets/11.jpg', // Resistor image
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
              'Ferrite beads are passive components that suppress high-frequency noise in electronic circuits. They act as a low-pass filter by absorbing high-frequency signals while allowing DC or low-frequency AC to pass.',
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
                  TextSpan(text: '\n     10Ω to 1kΩ at 100 MHz\n\n'),
                  TextSpan(text: '• Current Rating: '),
                  TextSpan(text: '\n     10 mA to several Amps\n\n'),
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     10 MHz - 1 GHz\n\n'),
                  TextSpan(text: '• Type: '),
                  TextSpan(text: '\n     SMD or axial\n\n'),
                  TextSpan(text: '• Resistance: '),
                  TextSpan(text: '\n     Typically <1Ω\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • Power supply decoupling\n     • EMI/RFI suppression\n     • Noise filtering in USB, HDMI, and other data lines\n     • Consumer electronics',
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
                  'assets/2.jpg',
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
                  'assets/12.jpg',
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

class SAWFiltersPage extends StatelessWidget {
  const SAWFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('SAW Filters')),
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
                  'assets/13.jpg', // Resistor image
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
              'Surface Acoustic Wave (SAW) filters use piezoelectric materials to convert electrical signals into mechanical waves and back, filtering the signal based on mechanical resonance. They offer precise filtering at high frequencies with excellent selectivity.',
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
                  TextSpan(text: '• Frequency Range: '),
                  TextSpan(text: '\n     30 MHz to 3 GHz\n\n'),
                  TextSpan(text: '• Insertion Loss: '),
                  TextSpan(text: '\n     Typically 1-5 dB\n\n'),
                  TextSpan(text: '• Selectivity: '),
                  TextSpan(text: '\n     High\n\n'),
                  TextSpan(text: '• Size: '),
                  TextSpan(text: '\n     Miniature SMD packages\n\n'),
                  TextSpan(text: '• Impedance: '),
                  TextSpan(text: '\n     Standard 50Ω\n\n'),
                  TextSpan(text: '• Applications: '),
                  TextSpan(
                    text:
                    '\n     • RF modules\n     • Mobile phones\n     • Wireless communication\n     • GPS receivers',
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
                  'assets/14.jpg',
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
                  'assets/15.jpg',
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