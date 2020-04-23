import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/eservice_card.dart';
import '../data/eservices_data.dart';

class EservicesScreen extends StatefulWidget {
  @override
  _EservicesScreenState createState() => _EservicesScreenState();
}

class _EservicesScreenState extends State<EservicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('eServices'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StaggeredGridView.countBuilder(
            primary: true,
            padding: const EdgeInsets.all(12),
            crossAxisCount: 4,
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            itemCount: eservices.length,
            itemBuilder: (BuildContext context, int index) =>
                EserviceWidget(eservice: eservices[index]),
            staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
          ),
        ));
  }
}
