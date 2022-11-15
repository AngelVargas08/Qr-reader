
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/provider/selected_navigation.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = context.watch<UiSelected>();
    final curretIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selected(i),
      currentIndex: curretIndex,
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