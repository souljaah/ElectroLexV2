import 'package:flutter/material.dart';
import 'inductors.dart';
import 'micromotors.dart';
import 'clocktiming.dart';
import 'displays.dart';
import 'functional.dart';
import 'development.dart';
import 'oscillators.dart';
import 'embeddedcontrollers.dart';
import 'filters.dart';
import 'hardware.dart';
import 'interface.dart';
import 'iot.dart';
import 'logic.dart';
import 'memory.dart';

class ComponentDetailPage extends StatelessWidget {
  final String title;

  ComponentDetailPage(this.title);

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (title) {
      case 'Inductors':
        content = _buildInductorsContent();
        break;
      case 'Fuses':
        content = _buildFusesContent();
        break;
      case 'Memory':
        content = _buildMemoryContent();
        break;
      case 'Micromotors':
        content = _buildMicromotorsContent();
        break;
      case 'Clock and Timing':
        content = _buildClockandTimingContent();
        break;
      case 'Display drivers':
        content = _buildDisplayDriversContent();
        break;
      case '  Functional\n  Modules':
        content = _buildFunctionalModulesContent();
        break;
      case '  Development\n       Tools':
        content = _buildDevelopmentToolsContent();
        break;
      case '  Oscillators ':
        content = _buildOscillatorsContent();
        break;
      case '  Embedded\n  Controllers':
        content = _buildEmbeddedControllersContent();
        break;
      case '  Filters\n Optimization':
        content = _buildFiltersOptimizationContent();
        break;
      case '      Hardware/Solders/Batteries':
        content = _buildHardwareContent();
        break;
      case 'Interface ICs':
        content = _buildInterfaceIcsContent();
        break;
      case '            IoT\n Communication':
        content = _buildIotCommunicationContent();
        break;
      case 'Logic ICs':
        content = _buildLogicICsContent();
        break;
      default:
        content = const Text("No detailed content available.");
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: content,
      ),
    );
  }

  Widget _buildInductorsContent() {
    final List<String> inductorsItems = [
      'Adjustable Inductors',
      'Current Transformers',
      'Power Inductors',
      'Power Transformer',
      'Through Hole Inductors',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: inductorsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(inductorsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getInductorPage(inductorsItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getInductorPage(String name) {
    switch (name) {
      case 'Adjustable Inductors':
        return AdjustableInductorsPage();
      case 'Current Transformers':
        return CurrentTransformersPage();
      case 'Power Inductors':
        return PowerInductorsPage();
      case 'Power Transformer':
        return PowerTransformerPage();
      case 'Through Hole Inductors':
        return ThroughHoleInductorsPage();
      default:
        return IndividualInductorPage(
          title: name,
          description: 'No description available.',
          imagePath: 'assets/Inductor/default.png',
        );
    }
  }

  Widget _buildFusesContent() {
    final List<String> fusesItems = [
      'Glass Tube Fuse',
      'Blade Fuse',
      'Ceramic Fuse',
      'Resettable Fuse',
      'Thermal Fuse',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: fusesItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(fusesItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getFusePage(fusesItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getFusePage(String name) {
    switch (name) {
      case 'Glass Tube Fuse':
        return _getComponentDetailPage(name, 'Used in household appliances and electronics.');
      case 'Blade Fuse':
        return _getComponentDetailPage(name, 'Commonly used in automotive applications.');
      case 'Ceramic Fuse':
        return _getComponentDetailPage(name, 'Used in high-voltage circuits.');
      case 'Resettable Fuse':
        return _getComponentDetailPage(name, 'Fuses that can reset after a current overload.');
      case 'Thermal Fuse':
        return _getComponentDetailPage(name, 'Triggered by temperature increase, often used in heating devices.');
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildMemoryContent() {
    final List<String> memoryItems = [
      'DRAM',
      'EEPROM',
      'Font Chips',
      'FRAM',
      'NAND FLASH',
      'NOR FLASH',
      'SDRAM',
      'SRAM',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: memoryItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(memoryItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getMemoryPage(memoryItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getMemoryPage(String name) {
    switch (name) {
      case 'DRAM':
        return DRAMPage();
      case 'EEPROM':
        return EEPROMPage();
      case 'Font Chips':
        return FontChipsPage();
      case 'FRAM':
        return FRAMPage();
      case 'NAND FLASH':
        return NANDFLASHPage();
      case 'NOR FLASH':
        return NORFLASHPage();
      case 'SDRAM':
        return SDRAMPage();
      case 'SRAM':
        return SRAMPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }


  Widget _buildMicromotorsContent() {
    final List<String> micromotorsItems = [
      'Buzzers',
      'MEMS Microphones',
      'Micro Motor',
      'Speakers',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: micromotorsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(micromotorsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getMicromotorsPage(micromotorsItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getMicromotorsPage(String name) {
    switch (name) {
      case 'Buzzers':
        return BuzzersPage();
      case 'MEMS Microphones':
        return MEMSMicrophonesPage();
      case 'Micro Motor':
        return MicroMotorPage();
      case 'Speakers':
        return SpeakersPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildClockandTimingContent() {
    final List<String> clockItems = [
      'Clock Buffers',
      'Clock Generators',
      'Timing Application',
      'Driver Current',
      'Embedded Peripheral ICs',
      'Microprocessor',
      'Real Time Clocks',
      'Security Authentication',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: clockItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(clockItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getclockandtimingPage(clockItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getclockandtimingPage(String name) {
    switch (name) {
      case 'Clock Buffers':
        return ClockBuffersPage();
      case 'Clock Generators':
        return ClockGeneratorsPage();
      case 'Timing Application':
        return TimingApplicationPage();
      case 'Driver Current':
        return DriverCurrentPage();
      case 'Embedded Peripheral ICs':
        return EmbeddedPeripheralICsPage();
      case 'Microprocessor':
        return MicroprocessorPage();
      case 'Real Time Clocks':
        return RealTimeClocksPage();
      case 'Security Authentication':
        return SecurityAuthenticationPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildDisplayDriversContent() {
    final List<String> driversItems = [
      'Darlington Transistor Array',
      'Driver ICs',
      'LCD Displays Modules',
      'LED Displays Drivers',
      'LED Segment Display',
      'MOS Drivers',
      'OLED Displays Modules',
      'VFD Displays Modules',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: driversItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(driversItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getDriversPage(driversItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getDriversPage(String name) {
    switch (name) {
      case 'Darlington Transistor Array':
        return DarlingtonTransistorArrayPage();
      case 'Driver ICs':
        return DriverICsPage();
      case 'LCD Displays Modules':
        return LCDDisplaysModulesPage();
      case 'LED Displays Drivers':
        return LEDDisplaysDriversPage();
      case 'LED Segment Display':
        return LEDSegmentDisplayPage();
      case 'MOS Drivers':
        return MOSDriversPage();
      case 'OLED Displays Modules':
        return OLEDDisplaysModulesPage();
      case 'VFD Displays Modules':
        return VFDDisplaysModulesPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }


  Widget _buildFunctionalModulesContent() {
    final List<String> modulesItems = ['Sensor Modules', 'V-Audio Modules'];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: modulesItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(modulesItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getModulesPage(modulesItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getModulesPage(String name) {
    switch (name) {
      case 'Sensor Modules':
        return SensorModulesPage();
      case 'V-Audio Modules':
        return VAudioModulesPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildDevelopmentToolsContent() {
    final List<String> toolsItems = [
      'Development Kits',
      'Emulator Programmer',
      'Raspberry Pi',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: toolsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(toolsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getoolsPage(toolsItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getoolsPage(String name) {
    switch (name) {
      case 'Development Kits':
        return DevelopmentKitsPage();
      case 'Emulator Programmer':
        return EmulatorProgrammerPage();
      case 'Raspberry Pi':
        return RaspberryPiPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildOscillatorsContent() {
    final List<String> oscillatorsItems = [
      'Ceramic Resonators',
      'Crystals',
      'Oven Controlled Crystal',
      'Radial Cylinder Crystals',
      'SAW Resonators',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: oscillatorsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(oscillatorsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getOscillatorsPage(oscillatorsItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getOscillatorsPage(String name) {
    switch (name) {
      case 'Ceramic Resonators':
        return CeramicResonatorsPage();
      case 'Crystals':
        return CrystalsPage();
      case 'Oven Controlled Crystal':
        return OvenControlledCrystalPage();
      case 'Radial Cylinder Crystals':
        return RadialCylinderCrystalsPage();
      case 'SAW Resonators':
        return SAWResonatorsPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildEmbeddedControllersContent() {
    final List<String> controllersItems = [
      'ADI',
      'ARTERY Mcu',
      'Cmsemicon',
      'Cypress',
      'EastSoft',
      'GigaDevice',
      'Hitrendtech',
      'Holtek',
      'Infineon',
      'Megawin',
      'Microchip',
      'Mindmotion',
      'Renesas',
      'Silicon Labs',
      'Sinowealth',
      'Sonix',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: controllersItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(controllersItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getControllersPage(controllersItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getControllersPage(String name) {
    switch (name) {
      case 'ADI':
        return ADIPage();
      case 'ARTERY Mcu':
        return ARTERYMcuPage();
      case 'Cmsemicon':
        return CmsemiconPage();
      case 'Cypress':
        return CypressPage();
      case 'EastSoft':
        return EastSoftPage();
      case 'GigaDevice':
        return GigaDevicePage();
      case 'Hitrendtech':
        return HitrendtechPage();
      case 'Holtek':
        return HoltekPage();
      case 'Infineon':
        return InfineonPage();
      case 'Megawin':
        return MegawinPage();
      case 'Microchip':
        return MicrochipPage();
      case 'Mindmotion':
        return MindmotionPage();
      case 'Renesas':
        return RenesasPage();
      case 'Silicon Labs':
        return SiliconLabsPage();
      case 'Sinowealth':
        return SinowealthPage();
      case 'Sonix':
        return SonixPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildFiltersOptimizationContent() {
    final List<String> filtersItems = [
      'Active Filters',
      'Ceramic Filters',
      'Common Mode Filters',
      'EMC Filters',
      'Ferrite Beads',
      'SAW Filters',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: filtersItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(filtersItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getfiltersPage(filtersItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getfiltersPage(String name) {
    switch (name) {
      case 'Active Filters':
        return ActiveFiltersPage();
      case 'Ceramic Filters':
        return CeramicFiltersPage();
      case 'Common Mode Filters':
        return CommonModeFiltersPage();
      case 'EMC Filters':
        return EMCFiltersPage();
      case 'Ferrite Beads':
        return FerriteBeadsPage();
      case 'SAW Filters':
        return SAWFiltersPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildHardwareContent() {
    final List<String> hardwareItems = [
      'Accessories',
      'Batteries',
      'Hardware Fastener',
      'Heat Sinks',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: hardwareItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(hardwareItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getHardwarePage(hardwareItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getHardwarePage(String name) {
    switch (name) {
      case 'Accessories':
        return AccessoriesPage();
      case 'Batteries':
        return BatteriesPage();
      case 'Hardware Fastener':
        return HardwareFastenerPage();
      case 'Heat Sinks':
        return HeatSinksPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildInterfaceIcsContent() {
    final List<String> interfaceItems = [
      'CAN ICs',
      'Digital Isolators',
      'Ethernet ICs',
      'Interface Controllers',
      'Interface Telecommunication',
      'LIN Transceivers',
      'Sensor Interface ICs',
      'Serial Interface ICs',
      'USB ICs',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: interfaceItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(interfaceItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getinterfacePage(interfaceItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getinterfacePage(String name) {
    switch (name) {
      case 'CAN ICs':
        return CANICsPage();
      case 'Digital Isolators':
        return DigitalIsolatorsPage();
      case 'Ethernet ICs':
        return EthernetICsPage();
      case 'Interface Controllers':
        return InterfaceControllersPage();
      case 'Interface Telecommunication':
        return InterfaceTelecommunicationPage();
      case 'LIN Transceivers':
        return LINTransceiversPage();
      case 'Sensor Interface ICs':
        return SensorInterfaceICsPage();
      case 'Serial Interface ICs':
        return SerialInterfaceICsPage();
      case 'USB ICs':
        return USBICsPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }
  Widget _buildIotCommunicationContent() {
    final List<String> iotItems = [
      'Bluetooth Modules',
      'CAN Bus Modules',
      'Ethernet Modules',
      'Satellite Positioning Modules',
      'USB Modules',
      'WiFi Modules',
      'ZigBee Modules',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: iotItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(iotItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => _getIotPage(iotItems[index])),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getIotPage(String name) {
    switch (name) {
      case 'Bluetooth Modules':
        return BluetoothModulesPage();
      case 'CAN Bus Modules':
        return CANBusModulesPage();
      case 'Ethernet Modules':
        return EthernetModulesPage();
      case 'Satellite Positioning Modules':
        return SatellitePositioningModulesPage();
      case 'USB Modules':
        return USBModulesPage();
      case 'WiFi Modules':
        return WiFiModulesPage();
      case 'ZigBee Modules':
        return ZigBeeModulesPage();
      default:
        return IndividualInductorPage(
          title: name,
          description: 'No description available.',
          imagePath: 'assets/Inductor/default.png',
        );
    }
  }

  Widget _buildLogicICsContent() {
    final List<String> icsItems = [
      '4000 Series',
      '74 Series',
      'Codec ICs',
      'Flip Flops',
      'Gates',
      'Latches',
      'Multivibrators',
      'Registers',
      'Timer',
      'Translators',
      'Universal Bus Function',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: icsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(icsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => _geticsPage(icsItems[index])),
              );
            },
          ),
        );
      },
    );
  }

  Widget _geticsPage(String name) {
    switch (name) {
      case '4000 Series':
        return SeriesPage();
      case '74 Series':
        return SeriessPage();
      case 'Codec ICs':
        return CodecICsPage();
      case 'Flip Flops':
        return FlipFlopsPage();
      case 'Gates':
        return GatesPage();
      case 'Latches':
        return LatchesPage();
      case 'Multivibrators':
        return MultivibratorsPage();
      case 'Registers':
        return RegistersPage();
      case 'Timer':
        return TimerPage();
      case 'Translators':
        return TranslatorsPage();
      case 'Universal Bus Function':
        return UniversalBusFunctionPage();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }


  Widget _getComponentDetailPage(String title, String description) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
