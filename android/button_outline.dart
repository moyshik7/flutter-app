import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _OutlineButtonDemo extends StatelessWidget {

    @override

    Widget build(BuildContext context) {

        return Center(

            child: Column(

                mainAxisSize: MainAxisSize.min,

                children: [

                    OutlineButton(

                        // TODO: Should update to OutlineButton follow material spec.

                        highlightedBorderColor:

                                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),

                        child: Text(GalleryLocalizations.of(context).buttonText),

                        onPressed: () {},

                    ),

                    const SizedBox(height: 12),

                    OutlineButton.icon(

                        // TODO: Should update to OutlineButton follow material spec.

                        highlightedBorderColor:

                                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),

                        icon: const Icon(Icons.add, size: 18),

                        label: Text(GalleryLocalizations.of(context).buttonText),

                        onPressed: () {},

                    ),

                ],

            ),

        );

    }

}
