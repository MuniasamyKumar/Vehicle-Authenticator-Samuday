import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key,
      required this.connum,
      required this.ctrip,
      required this.km,
      required this.ownname,
      required this.ttrip,
      required this.vnum,
      required this.picolor,
      required this.percentage,
      required this.pibackcolor});
  final int vnum;
  final String ownname;
  final int connum;
  final int ttrip;
  final int ctrip;
  final int km;
  final dynamic picolor;
  final dynamic pibackcolor;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 210,
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 0.2)),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Vector 3081.png"),
                    fit: BoxFit.cover)),
            height: double.infinity,
            width: 125,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Vehicle $vnum",
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(255, 255, 255, 1))),
                  Container(
                    height: 40,
                    width: 65,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image 3 (2).png"),
                            fit: BoxFit.cover)),
                  ),
                  Text(ownname,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1))),
                  Row(
                    children: [
                      const Icon(Icons.call,
                          size: 8, color: Color.fromRGBO(255, 255, 255, 1)),
                      Text(" +91 $connum",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Text(
                    "Total Trip:",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "$ttrip",
                    style: const TextStyle(
                        fontSize: 8, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Cancelled Trip:",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    "$ctrip",
                    style: const TextStyle(
                        fontSize: 8, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 13,
                percent: percentage,
                progressColor: picolor,
                backgroundColor: pibackcolor,
                center: Center(
                    child: Text(
                  "$km \n  km",
                  style:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
