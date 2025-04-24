import 'package:flutter/material.dart';
import 'resistordetail.dart';
import 'componentdetails.dart';
import 'diodes.dart';
import 'icsdetail.dart';
import 'capacitordetail.dart';
import 'onboarding_screen.dart';
import 'micromotors.dart';
import 'oscillators.dart';

void main() {
  runApp(ElectroLexApp());
}

final ValueNotifier<bool> isDarkMode = ValueNotifier(false);

class ElectroLexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode,
      builder: (context, darkMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ElectroLex',
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Color(0xFFEAF4FF),
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey[900],
            primarySwatch: Colors.blue,
          ),
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/onboarding',
          routes: {
            '/home': (context) => ElectroLexHome(),
            '/onboarding': (context) => OnboardingScreen(),
          },
        );
      },
    );
  }
}

class ElectroLexHome extends StatefulWidget {
  @override
  State<ElectroLexHome> createState() => _ElectroLexHomeState();
}

class _ElectroLexHomeState extends State<ElectroLexHome> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, dynamic>> categories= [
    {'title': 'ICs', 'icon': Icons.electrical_services, 'color': Colors.blue},
    {'title': 'Resistors', 'icon': Icons.linear_scale, 'color': Colors.orange},
    {'title': 'Capacitors', 'icon': Icons.battery_charging_full, 'color': Colors.green},
    {'title': 'Diodes', 'icon': Icons.flash_on, 'color': Colors.red},
    {'title': 'Transistors', 'icon': Icons.toggle_on, 'color': Colors.purple},
    {'title': 'LEDs', 'icon': Icons.lightbulb, 'color': Colors.amber},
    {'title': 'Sensors', 'icon': Icons.sensors, 'color': Colors.teal},
    {'title': 'Modules', 'icon': Icons.view_module, 'color': Colors.brown},
    {'title': 'Amplifiers', 'icon': Icons.volume_up, 'color': Colors.blue},
    {'title': 'Switches', 'icon': Icons.toggle_on, 'color': Colors.lightBlue},
    {'title': 'Fuses', 'icon': Icons.power_off, 'color': Colors.redAccent},
    {'title': 'Others', 'icon': Icons.more_horiz, 'color': Colors.grey},
  ];


  final List<Map<String, dynamic>> othersComponents= [


    {'title': 'Micromotors', 'icon': Icons.headphones, 'color': Colors.pink},
    {'title': 'Circuit Protection', 'icon': Icons.security, 'color': Colors.red},
    {'title': 'Clock and Timing', 'icon': Icons.access_time, 'color': Colors.indigo},
    {'title': 'Connectors', 'icon': Icons.usb, 'color': Colors.teal},
    {'title': '  Oscillators ', 'icon': Icons.auto_awesome, 'color': Colors.green},
    {'title': 'Data Converters', 'icon': Icons.swap_horiz, 'color': Colors.orange},
    {'title': '  Development\n       Tools', 'icon': Icons.developer_board, 'color': Colors.purple},
    {'title': 'Display drivers', 'icon': Icons.display_settings, 'color': Colors.cyan},
    {'title': '  Electrical\n  Appliances', 'icon': Icons.electrical_services, 'color': Colors.grey},
    {'title': '  Electro\n  mechanical\n  Components', 'icon': Icons.build_circle, 'color': Colors.blueGrey},
    {'title': '  Embedded\n  Peripheral ICs', 'icon': Icons.memory, 'color': Colors.deepOrange},
    {'title': '  Embedded\n  Controllers', 'icon': Icons.control_camera, 'color': Colors.amber},
    {'title': '  Filters\n Optimization', 'icon': Icons.tune, 'color': Colors.green},
    {'title': '  Functional\n  Modules', 'icon': Icons.extension, 'color': Colors.lime},
    {'title': '      Hardware/Solders/Batteries', 'icon': Icons.build, 'color': Colors.brown},
    {'title': 'Inductors', 'icon': Icons.all_inclusive, 'color': Colors.indigo},
    {'title': 'Interface ICs', 'icon': Icons.input, 'color': Colors.purpleAccent},
    {'title': '            IoT\n Communication', 'icon': Icons.wifi, 'color': Colors.tealAccent},
    {'title': 'Logic ICs', 'icon': Icons.memory, 'color': Colors.blueAccent},
    {'title': 'Memory', 'icon': Icons.sd_storage, 'color': Colors.orangeAccent},
    {'title': 'Optoelectronics', 'icon': Icons.light_mode, 'color': Colors.yellow},
    {'title': '   Power Management ICs', 'icon': Icons.battery_full, 'color': Colors.greenAccent},
    {'title': '  Push Button\n   Switch', 'icon': Icons.radio_button_checked, 'color': Colors.deepPurple},
    {'title': 'Relays', 'icon': Icons.flash_auto, 'color': Colors.cyanAccent},
    {'title': 'Rf & Radio', 'icon': Icons.radio, 'color': Colors.red},
    {'title':  'Switches', 'icon': Icons.toggle_on, 'color': Colors.lightBlue},
  ];

  List<Map<String, dynamic>> get allComponents =>
      [...categories, ...othersComponents, ...subcomponents];

  final List<Map<String, dynamic>> subcomponents = [
    {
      'title': 'Buzzers',
      'category': 'Micromotors',
      'icon': Icons.headphones,
      'color': Colors.pink,
    },
    {
      'title': 'MEMS Microphones',
      'category': 'Micromotors',
      'icon': Icons.headphones,
      'color': Colors.pink,
    },
    {
      'title': 'Micro Motor',
      'category': 'Micromotors',
      'icon': Icons.headphones,
      'color': Colors.pink,
    },
    {
      'title': 'Speakers',
      'category': 'Micromotors',
      'icon': Icons.headphones,
      'color': Colors.pink,
    },
    {
      'title': 'Ceramic Resonators',
      'category': 'Oscillators',
      'icon': Icons.auto_awesome,
      'color': Colors.green,
    },
    {
      'title': 'Crystals',
      'category': 'Oscillators',
      'icon': Icons.auto_awesome,
      'color': Colors.green,
    },
    {
      'title': 'Oven Controlled Crystal',
      'category': 'Oscillators',
      'icon': Icons.auto_awesome,
      'color': Colors.green,
    },
    {
      'title': 'Radial Cylinder Crystals',
      'category': 'Oscillators',
      'icon': Icons.auto_awesome,
      'color': Colors.green,
    },
    {
      'title': 'SAW Resonators',
      'category': 'Oscillators',
      'icon': Icons.auto_awesome,
      'color': Colors.green,
    },
    {
      'title': 'Carbon Film Resistor',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Current Sense Resistors',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'High Voltage Resistor',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'LED Strip Resistors',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Metal Glaze Resistors',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Metal Oxide Resistors',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Potentiometers Resistor',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Network & Arrays Resistor',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
    {
      'title': 'Variable Resistor',
      'category': 'Resistors',
      'icon': Icons.linear_scale,
      'color': Colors.orange,
    },
  ];


  List<Map<String, dynamic>> get filteredComponents {
    return allComponents
        .where((component) => component['title'].toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'EL',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'ElectroLex',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Electronic Reference',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: 380,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                padding: EdgeInsets.all(4),
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Search'),
                    Tab(text: 'Settings'),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildHomeTab(context),
                    _buildSearchTab(),
                    _buildSettingsTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeTab(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Categories',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {
                  if (category['title'] == 'Others') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => OthersCategoryPage(othersComponents)),
                    );
                  } else if (category['title'] == 'Diodes') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DiodeDetailPage()),
                    );
                  }
                  else if (category['title'] == 'ICs') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ICDetailPage()),
                    );
                  }
                  else if (category['title'] == 'Capacitors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CapacitorDetailPage()),
                    );
                  }
                  else if (category['title'] == 'Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ResistorDetailPage()),
                    );
                  }
                  else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ComponentDetailPage(category['title'])),
                    );
                  }


                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(color: category['color'], shape: BoxShape.circle),
                        child: Icon(category['icon'], color: Colors.white, size: 28),
                      ),
                      const SizedBox(height: 8),
                      Text(category['title'], style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Search for components...',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Theme.of(context).cardColor,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Expanded(
          child: filteredComponents.isEmpty
              ? Center(child: Text('No components found'))
              : GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
            children: filteredComponents
                .where((component) => component['title'] != 'Others') // Exclude 'Others' category
                .map((component) {
              return GestureDetector(
                onTap: () {
                  if (component['title'] == 'Buzzers') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BuzzersPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'MEMS Microphones') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MEMSMicrophonesPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Micro Motor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MicroMotorPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Speakers') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SpeakersPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Ceramic Resonators') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CeramicResonatorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Crystals') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CrystalsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Oven Controlled Crystal') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => OvenControlledCrystalPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'SAW Resonators') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SAWResonatorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Radial Cylinder Crystals') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RadialCylinderCrystalsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Carbon Film Resistor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CarbonFilmResistorPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Current Sense Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CurrentSenseResistorsPage ()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'High Voltage Resistor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HighVoltageResistorPage ()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'LED Strip Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LEDStripResistorsPage ()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Metal Glaze Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MetalGlazeResistorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Metal Oxide Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MetalOxideResistorPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Potentiometers Resistor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PotentiometersResistorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Network & Arrays Resistor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => NetworkArraysResistorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Variable Resistor') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => VariableResistorsPage()), // Navigate to CarbonFilmResistorPage
                    );
                  }
                  else if (component['title'] == 'Resistors') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ResistorDetailPage()), // Navigate to ResistorDetailPage
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ComponentDetailPage(component['title'])), // Navigate to general component page
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(color: component['color'], shape: BoxShape.circle),
                        child: Icon(component['icon'], color: Colors.white, size: 28),
                      ),
                      const SizedBox(height: 8),
                      Text(component['title'], style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  Widget _buildSettingsTab() {
    return Column(
      children: [
        ListTile(
          title: Text('Dark Mode'),
          trailing: IconButton(
            icon: Icon(
              isDarkMode.value ? Icons.wb_sunny : Icons.nightlight_round,
              color: isDarkMode.value ? Colors.yellow : Colors.blueGrey,
            ),
            onPressed: () {
              setState(() {
                isDarkMode.value = !isDarkMode.value; // Toggle dark mode
              });
            },
          ),
        ),
      ],
    );
  }
}

class OthersCategoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> components;

  OthersCategoryPage(this.components);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Others")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1,
          children: components.map((item) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ComponentDetailPage(item['title'])),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(color: item['color'], shape: BoxShape.circle),
                      child: Icon(item['icon'], color: Colors.white, size: 28),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(item['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}





