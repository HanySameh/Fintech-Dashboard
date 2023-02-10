import 'package:flutter/material.dart';

import '../models/enums/navigation_items.dart';
import '../responsive.dart';
import '../widgets/navigation_button.dart';

class NavigationPanel extends StatefulWidget {
  final Axis axis;
  const NavigationPanel({super.key, required this.axis});

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: Responsive.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 30, vertical: 20)
          : const EdgeInsets.all(10),
      child: widget.axis == Axis.vertical
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/logo.png", height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: NavigationItems.values
                      .map(
                        (e) => NavigationButton(
                          onPressed: () {
                            setState(() {
                              activeTab = e.index;
                            });
                          },
                          icon: e.icon,
                          isActive: e.index == activeTab,
                        ),
                      )
                      .toList(),
                ),
                Container()
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/logo.png", height: 20),
                Row(
                  children: NavigationItems.values
                      .map(
                        (e) => NavigationButton(
                          onPressed: () {
                            setState(() {
                              activeTab = e.index;
                            });
                          },
                          icon: e.icon,
                          isActive: e.index == activeTab,
                        ),
                      )
                      .toList(),
                ),
                Container()
              ],
            ),
    );
  }
}
