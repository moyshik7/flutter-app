import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _ToggleButtonsDemo extends StatefulWidget {

    @override

    _ToggleButtonsDemoState createState() => _ToggleButtonsDemoState();

}

class _ToggleButtonsDemoState extends State<_ToggleButtonsDemo> {

    final isSelected = <bool>[false, false, false];

    @override

    Widget build(BuildContext context) {

        return Center(

            child: ToggleButtons(

                children: const [

                    Icon(Icons.ac_unit),

                    Icon(Icons.call),

                    Icon(Icons.cake),

                ],

                onPressed: (index) {

                    setState(() {

                        isSelected[index] = !isSelected[index];

                    });

                },

                isSelected: isSelected,

            ),

        );

    }

}
