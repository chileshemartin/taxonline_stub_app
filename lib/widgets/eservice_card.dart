import 'package:flutter/material.dart';

import '../eservices/models/eservice.dart';

class EserviceWidget extends StatelessWidget {
  final Eservice eservice;

  const EserviceWidget({
    @required this.eservice,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: (){
      print('Pressed');
      Navigator.pushNamed(context, eservice.route);
    },
    child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(eservice.image, fit: BoxFit.cover),
                ),
              ],
            ),
            buildInfo(context),
          ],
        ),
  );

  Widget buildInfo(BuildContext context) => Container(
//        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8),
              Text(
                eservice.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(eservice.description,
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
        ),
      );
}
