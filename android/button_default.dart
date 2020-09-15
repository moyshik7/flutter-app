import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _FlatButtonDemo extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Center(

      child: Column(

        mainAxisSize: MainAxisSize.min,

        children: [

          FlatButton(

            child: Text(GalleryLocalizations.of(context).buttonText),

            onPressed: () {},

          ),

          const SizedBox(height: 12),

          FlatButton.icon(

            icon: const Icon(Icons.add, size: 18),

            label: Text(GalleryLocalizations.of(context).buttonText),

            onPressed: () {},

          ),

        ],

      ),

    );

  }

}
