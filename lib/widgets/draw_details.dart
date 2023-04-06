import 'package:defi_rafel_app/widgets/common_box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawDetails extends StatelessWidget {
  const DrawDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: outlineBoxDecoration(context),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Next Draw",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(15),
                decoration: outlineBoxDecoration(context),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Total Pool\n",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      TextSpan(
                        text: "0.001 AVAX",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(15),
                decoration: outlineBoxDecoration(context),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tickets Remaining\n",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      TextSpan(
                        text: "100",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            "Time Remaining",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Timer(title: "Hours"),
              Timer(title: "Minutes"),
              Timer(title: "Seconds"),
            ],
          ),
        ],
      ),
    );
  }
}

class Timer extends StatelessWidget {
  final String title;
  const Timer({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).focusColor),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "8\n",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
