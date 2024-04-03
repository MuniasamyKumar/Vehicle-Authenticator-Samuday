import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sample_1/employee_list.dart';
import 'package:sample_1/homepage.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class VehicleDetailsPage extends StatefulWidget {
  const VehicleDetailsPage({super.key});

  @override
  State<VehicleDetailsPage> createState() => _VehicleDetailsPageState();
}

class _VehicleDetailsPageState extends State<VehicleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppbar(scaffoldKey: _scaffoldKey),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Vehicle  Details",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 140,
                ),
                const Spacer(),
                SizedBox(
                  width: 350,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFE8F2FF),
                      filled: true,
                      labelText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 19,
                      ),
                      labelStyle: TextStyle(color: Colors.blueAccent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(
                      0,
                      97,
                      228,
                      1,
                    ),
                  ),
                  child: const Icon(
                    Icons.file_download_outlined,
                    size: 22,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 310,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 80,
                                width: 140,
                                child: Image.asset(
                                    "assets/side-view-blue-generic-unbranded-suv-car-isolated-white-background_110488-1888 1@2x.png"),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF0061E4),
                                  ),
                                  height: 45,
                                  width: 45,
                                  child: Center(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 18,
                                          )))),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vehicle No.",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Driver",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Text(
                                    "Contact No.",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Make",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Model",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TN 69 AB 5683",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "S Ragu",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "8940189113",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Maruti Suzuki",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "2015",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        CustomCard(
                          cicon: Icons.directions_car,
                          title: "No. of Trips",
                          num: "50",
                        ),
                        CustomCard(
                          cicon: Icons.payments_outlined,
                          title: "Service cost",
                          num: "5,000",
                          rsymbol: "₹ ",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomCard(
                          cicon: Icons.car_crash_sharp,
                          title: "Service trip",
                          num: "5",
                        ),
                        CustomCard(
                          cicon: Icons.car_repair_rounded,
                          title: "Special trip",
                          num: "5",
                        ),
                      ],
                    )
                  ],
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 310,
                    width: 300,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: 30,),
                        const Text(
                          "KM Limit",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40,),
                        SizedBox(
                          child: CircularPercentIndicator(
                            radius: 85,
                            lineWidth: 25,
                            percent: 0.75,
                            progressColor: Colors.red,
                            backgroundColor: const Color(0xFFDDDDDD),
                            center: const Center(
                                child: Text(
                              "3000",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w600),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            

          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String num;
  final String title;
  final String? rsymbol;
  final IconData cicon;
  const CustomCard({
    super.key,
    required this.num,
    required this.title,
    required this.cicon,
    this.rsymbol,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          height: 145,
          width: 190,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 55,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD8EFFC),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      cicon,
                      size: 25,
                      color: const Color(0xFF0C5CD7),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rsymbol ?? '',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    num,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
