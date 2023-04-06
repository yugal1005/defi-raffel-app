import 'package:defi_rafel_app/widgets/common_box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TicketDetails extends StatefulWidget {
  const TicketDetails({super.key});

  @override
  State<TicketDetails> createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
  double ticketCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.31,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
      decoration: outlineBoxDecoration(context),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(fontSize: 16),
              children: [
                TextSpan(text: "Price per ticket"),
                WidgetSpan(
                    child: SizedBox(
                  width: 100,
                )),
                TextSpan(
                  text: "0.1 AVAX",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(fontSize: 16),
              children: [
                TextSpan(text: "Number of tickets"),
                WidgetSpan(
                    child: SizedBox(
                  width: 100,
                )),
                TextSpan(
                  text: ticketCount.toStringAsFixed(0),
                ),
              ],
            ),
          ),
          Slider(
            divisions: 10,
            value: ticketCount,
            onChanged: (val) {
              setState(() {
                ticketCount = val;
              });
            },
            min: 0,
            max: 10,
            label: ticketCount.toStringAsFixed(0),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).highlightColor),
              children: [
                TextSpan(text: "Total cost of 1 ticket"),
                WidgetSpan(
                    child: SizedBox(
                  width: 50,
                )),
                TextSpan(
                  text: "0.1 AVAX",
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).highlightColor),
              children: [
                TextSpan(text: "Service fee"),
                WidgetSpan(
                    child: SizedBox(
                  width: 100,
                )),
                TextSpan(
                  text: "0.001 AVAX",
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).highlightColor),
              children: [
                TextSpan(text: "Network fees"),
                WidgetSpan(
                    child: SizedBox(
                  width: 80,
                )),
                TextSpan(
                  text: "0.055 AVAX",
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          TextButton(
            onPressed: () {},
            child: Text(
              "Buy 10 ticket for 0.1 AVAX",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: FilledButton.styleFrom(
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                backgroundColor: Theme.of(context).cardColor),
          )
        ],
      ),
    );
  }
}
