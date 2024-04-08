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
                padding: const EdgeInsets.only(left: 20,top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S.Ragu",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "19-10-2023    10:11 AM",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        color: Colors.grey),
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "From : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Office",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
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
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "Anna Nagar,Vilathikulam",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                "2 Members",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.green[900],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call_sharp,
                              color: Colors.white, size: 20))),
                  const SizedBox(width: 20),
                  CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 11, 2, 187),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.map_outlined,
                              color: Colors.white, size: 20))),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 210, 184, 243)),
                      minimumSize: const MaterialStatePropertyAll(
                        Size(100, 35),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide.none))),
                  child: const Text("Accept",
                      style: TextStyle(color: Color(0xFF8E30FF)))),

            ],
          ),
                ),
              ),
              children: const [
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  endIndent: 30,
                  indent: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 45, top: 10, bottom: 20, right: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     CustomExpandRow(
                    content: "Requested",
                  ),
                  CustomExpandRow(
                    content: "Assigned",
                  ),
                  CustomExpandRow(
                    content: "Accepted",
                  ),
                   
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
