import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _TabsNonScrollableDemo extends StatelessWidget {

    @override

    Widget build(BuildContext context) {

        final tabs = [

            GalleryLocalizations.of(context).colorsRed,

            GalleryLocalizations.of(context).colorsOrange,

            GalleryLocalizations.of(context).colorsGreen,

        ];

        return DefaultTabController(

            length: tabs.length,

            child: Scaffold(

                appBar: AppBar(

                    automaticallyImplyLeading: false,

                    title:

                            Text(GalleryLocalizations.of(context).demoTabsNonScrollingTitle),

                    bottom: TabBar(

                        isScrollable: false,

                        tabs: [

                            for (final tab in tabs) Tab(text: tab),

                        ],

                    ),

                ),

                body: TabBarView(

                    children: [

                        for (final tab in tabs)

                            Center(

                                child: Text(tab),

                            ),

                    ],

                ),

            ),

        );

    }

}
