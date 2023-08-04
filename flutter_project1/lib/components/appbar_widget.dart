import 'package:flutter/material.dart';


/* a costume appbar that implemnts an abstract class 
because appbar attribute accepts just a preferredSizeWidget*/

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget(
      {super.key, required this.title, this.barColor = Colors.white})
      : preferredSize = const Size.fromHeight(kToolbarHeight); 
      //a constractor from the implemented class that i give a size of the appbar from flutter
  final String title;
  final Color barColor;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, //based on the design no elevation was there
      backgroundColor: barColor,
      centerTitle: true,
      title: Text(title,
          style: const TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold)),
    );
  }
}
