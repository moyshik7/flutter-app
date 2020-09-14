import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _TabsScrollableDemo extends StatelessWidget {

    @override

    Widget build(BuildContext context) {

        final tabs = [

            GalleryLocalizations.of(context).colorsRed,

            GalleryLocalizations.of(context).colorsOrange,

            GalleryLocalizations.of(context).colorsGreen,

            GalleryLocalizations.of(context).colorsBlue,

            GalleryLocalizations.of(context).colorsIndigo,

            GalleryLocalizations.of(context).colorsPurple,

            GalleryLocalizations.of(context).colorsRed,

            GalleryLocalizations.of(context).colorsOrange,

            GalleryLocalizations.of(context).colorsGreen,

            GalleryLocalizations.of(context).colorsBlue,

            GalleryLocalizations.of(context).colorsIndigo,

            GalleryLocalizations.of(context).colorsPurple,

        ];

        return DefaultTabController(

            length: tabs.length,

            child: Scaffold(

                appBar: AppBar(

                    automaticallyImplyLeading: false,

                    title: Text(GalleryLocalizations.of(context).demoTabsScrollingTitle),

                    bottom: TabBar(

                        isScrollable: true,

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
