import 'package:defi_rafel_app/widgets/admin_control_widget.dart';
import 'package:defi_rafel_app/widgets/draw_details.dart';
import 'package:defi_rafel_app/widgets/ticket_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 40,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset(
            "assets/icons/avatar.svg",
            height: 10,
            width: 10,
            color: Theme.of(context).cardColor,
          ),
        ),
        title: RichText(
          overflow: TextOverflow.ellipsis,
          text: const TextSpan(
            children: [
              TextSpan(
                text: "DefiRaffle\n",
                style: TextStyle(
                  color: Color.fromRGBO(15, 182, 132, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "User :",
              )
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: double.maxFinite,
            color: Theme.of(context).focusColor,
            child: Marquee(
              text: "Last Winner : a46as4df65sf6s6df4s6dfsd6vds654gadssdfsdfsd8",
              scrollAxis: Axis.horizontal,
              style: TextStyle(color: Colors.white),
              blankSpace: 40,
            ),
          ),
          AdminControls(),
          DrawDetails(),
          TicketDetails(),
        ],),
      ),
    );
  }
}
