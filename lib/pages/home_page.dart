
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/pages/direction_page.dart';
import 'package:qr/pages/history_maps.dart';
import 'package:qr/pages/widgets/custom_navigation_bar.dart';
import 'package:qr/pages/widgets/scan_button.dart';
import 'package:qr/provider/selected_navigation.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text('Historial')),
        actions: const [

          Icon(Icons.delete_forever, size: 25,)
        ],
      ),
      body: _HomePageBody(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}


class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final selected = context.watch<UiSelected>().selected;
   

      switch (selected) {
        case 0:
          return const HistoryMaps();
        case 1:
          return const DirectionPage();  
          
        default:
        return const HistoryMaps();
      }
  }
}