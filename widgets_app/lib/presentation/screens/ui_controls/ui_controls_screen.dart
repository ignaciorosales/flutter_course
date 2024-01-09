import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  static const name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Additional Controls'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
            title: const Text('Transportation vehicle'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By Car'),
                  subtitle: const Text('Travel in car'),
                  value: Transportation.car,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.car;
                      })),
              RadioListTile(
                  title: const Text('By Boat'),
                  subtitle: const Text('Travel in boat'),
                  value: Transportation.boat,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.boat;
                      })),
              RadioListTile(
                  title: const Text('By Plane'),
                  subtitle: const Text('Travel in plane'),
                  value: Transportation.plane,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.plane;
                      })),
              RadioListTile(
                  title: const Text('By Submarine'),
                  subtitle: const Text('Travel in submarine'),
                  value: Transportation.submarine,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.submarine;
                      })),
            ]),

            CheckboxListTile(
              title: const Text('Include breakfast?'),
              value: wantsBreakfast, 
              onChanged: (value) => setState(() {
                wantsBreakfast = !wantsBreakfast;
              }),
            ),
            CheckboxListTile(
              title: const Text('Include lunch?'),
              value: wantsLunch, 
              onChanged: (value) => setState(() {
                wantsLunch = !wantsLunch;
              }),
            ),
            CheckboxListTile(
              title: const Text('Include dinner?'),
              value: wantsDinner, 
              onChanged: (value) => setState(() {
                wantsDinner = !wantsDinner;
              }),
            ),
      ],
    );
  }
}
