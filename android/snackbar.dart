import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class SnackbarsDemo extends StatelessWidget {

    const SnackbarsDemo();

    @override

    Widget build(BuildContext context) {

        return Scaffold(

            appBar: AppBar(

                automaticallyImplyLeading: false,

                title: Text(GalleryLocalizations.of(context).demoSnackbarsTitle),

            ),

            body: Builder(

                // Create an inner BuildContext so that the snackBar onPressed methods

                // can refer to the Scaffold with Scaffold.of().

                builder: (context) {

                    return Center(

                        child: RaisedButton(

                            child: Text(

                                    GalleryLocalizations.of(context).demoSnackbarsButtonLabel),

                            onPressed: () {

                                Scaffold.of(context).hideCurrentSnackBar();

                                Scaffold.of(context).showSnackBar(SnackBar(

                                    content: Text(

                                        GalleryLocalizations.of(context).demoSnackbarsText,

                                    ),

                                    action: SnackBarAction(

                                        label: GalleryLocalizations.of(context)

                                                .demoSnackbarsActionButtonLabel,

                                        onPressed: () {

                                            Scaffold.of(context).hideCurrentSnackBar();

                                            Scaffold.of(context).showSnackBar(SnackBar(

                                                content: Text(

                                                    GalleryLocalizations.of(context).demoSnackbarsAction,

                                                ),

                                            ));

                                        },

                                    ),

                                ));

                            },

                        ),

                    );

                },

            ),

        );

    }

}
