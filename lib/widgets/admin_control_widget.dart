import 'package:defi_rafel_app/widgets/common_box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminControls extends StatelessWidget {
  const AdminControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: outlineBoxDecoration(context),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          "Admin Controls",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        AdminControlsButton(
            icon: Icon(
              Icons.star,
              color: Colors.white,
            ),
            title: "Draw Winner",
            onTap: () {}),
        AdminControlsButton(
            icon: Icon(Icons.u_turn_left, color: Colors.white),
            title: "Refund all",
            onTap: () {}),
        AdminControlsButton(
            icon: Icon(Icons.restart_alt, color: Colors.white),
            title: "Restart draw",
            onTap: () {}),
      ]),
    );
  }
}

class AdminControlsButton extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function onTap;
  const AdminControlsButton(
      {required this.icon,
      required this.title,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: outlineBoxDecoration(context,bgColor: Color.fromRGBO(0, 29, 61, 1)),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20, height: 20, child: icon),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          )),
      onTap: () => onTap,
    );
  }
}
