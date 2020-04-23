import 'package:meta/meta.dart';

@immutable
class Eservice {
  final String image;
  final String title;
  final String description;
  final String route;

  const Eservice(
      {@required this.image, @required this.title, @required this.description, @required this.route});
}