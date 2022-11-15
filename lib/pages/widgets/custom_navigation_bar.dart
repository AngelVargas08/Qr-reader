
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/provider/selected_navigation.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final select = context.watch<UiSelected>();

    return BottomNavigationBar(
      onTap: (int i) => select.selecteditem(i),
      currentIndex: select.selected,
      elevation: 0,
      items: const [
      BottomNavigationBarItem(
        label: 'Mapas',
        icon: Icon(Icons.map_sharp)
        ),
        BottomNavigationBarItem(
        label: 'Direcciones',
        icon: Icon(Icons.compass_calibration_rounded)
        ),
      ]
      );
  }
}