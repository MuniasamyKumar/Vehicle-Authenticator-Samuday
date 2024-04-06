import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: ExpansionTile(
              trailing: const Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 10, top: 10, bottom: 10),
                child: Icon(
                  Icons.expand_more,
                  size: 30,
                ),
              ),
              shape: const RoundedRectangleBorder(side: BorderSide.none),
              iconColor: Colors.black,
              textColor: Colors.black,
              title: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage("assets/car01.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TN96 BS3545",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "19-10-2023    10:11 AM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "From : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Office",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "To : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Vilvamarathupatti",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "User : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/Ellipse 2.png"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "Guru prasad",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Driver : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/Ellipse 3.png"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  "saran Kumar c",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Total Km  : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "No.of Traveller : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              children: [
                const Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  endIndent: 30,
                  indent: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45, top: 10, bottom: 20, right: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Starting Km:  ---",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const Text(
                        "Starting Time:  ---",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const Text(
                        "Ending Km:  ---",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const Text(
                        "Ending Time:  ---",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const Row(
                        children: [
                          Text(
                            "Purpose:  ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "Ut enim ad minim veniam",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              elevation: const MaterialStatePropertyAll(0),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xFFFDF3E6)),
                              minimumSize: const MaterialStatePropertyAll(
                                Size(100, 35),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide.none))),
                          child: const Text("Assigned",
                              style: TextStyle(color: Color(0xFFE68A00)))),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomExpandRow extends StatelessWidget {
  const CustomExpandRow({
    super.key,
    required this.content,
  });
  final String content;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 18,
          backgroundColor: Color(0xFF0043CE),
          child: Icon(
            Icons.done,
            size: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
