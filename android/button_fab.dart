import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class _FloatingActionButtonDemo extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Center(

      child: Column(

        mainAxisSize: MainAxisSize.min,

        children: [

          FloatingActionButton(

            child: const Icon(Icons.add),

            onPressed: () {},

            tooltip: GalleryLocalizations.of(context).buttonTextCreate,

          ),

          const SizedBox(height: 20),

          FloatingActionButton.extended(

            icon: const Icon(Icons.add),

            label: Text(GalleryLocalizations.of(context).buttonTextCreate),

            onPressed: () {},

          ),

        ],

      ),

    );

  }

}
