import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanter/app_colors.dart';
import 'package:vanter/data/notifiers.dart';
import 'package:vanter/screens/vanter_new_vent_session.dart';
import 'package:vanter/screens/vanter_shelf.dart';

List<Widget> pages = [VanterNewVentSession(), VanterShelf()];

class WidgetTree extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.spa, color: AppColors.primary),
            SizedBox(width: 10),
            Text(
              "Vanter",
              style: GoogleFonts.plusJakartaSans(
                color: AppColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPage,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),

      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedPage,
        builder: (context, value, child) {
          return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.mic), label: "Vent"),
              NavigationDestination(icon: Icon(Icons.shelves), label: "Shelf",)

            ],
            onDestinationSelected: (value) => selectedPage.value = value,
            selectedIndex: value,

          );
        },
      ),
    );
  }
}
