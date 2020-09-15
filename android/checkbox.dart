import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _CheckboxDemo extends StatefulWidget {

    @override

    _CheckboxDemoState createState() => _CheckboxDemoState();

}

class _CheckboxDemoState extends State<_CheckboxDemo> {

    bool checkboxValueA = true;

    bool checkboxValueB = false;

    bool checkboxValueC;

    @override

    Widget build(BuildContext context) {

        return Center(

            child: Row(

                mainAxisSize: MainAxisSize.min,

                children: [

                    Checkbox(

                        value: checkboxValueA,

                        onChanged: (value) {

                            setState(() {

                                checkboxValueA = value;

                            });

                        },

                    ),

                    Checkbox(

                        value: checkboxValueB,

                        onChanged: (value) {

                            setState(() {

                                checkboxValueB = value;

                            });

                        },

                    ),

                    Checkbox(

                        value: checkboxValueC,

                        tristate: true,

                        onChanged: (value) {

                            setState(() {

                                checkboxValueC = value;

                            });

                        },

                    ),

                ],

            ),

        );

    }

}
