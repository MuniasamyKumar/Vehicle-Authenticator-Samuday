import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/invoice_page.dart';
import 'package:sample_1/profile_view_page.dart';
import 'package:sample_1/trip_list_page.dart';
import 'package:sample_1/vehicle_list_page.dart';
import 'Widgets/car_container.dart';
import 'employee_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu,
                color: Color.fromRGBO(
                  0,
                  97,
                  228,
                  1,
                ))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications,
                  color: Color.fromRGBO(
                    0,
                    97,
                    228,
                    1,
                  ))),
        ],
        title: Center(child: Image.asset("assets/logo.png")),
        elevation: 5,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hi, Guru. Welcome!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                      ],
                    ),
                    Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 205,
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 33,
                              height: 33,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                    45,
                                    156,
                                    219,
                                    0.15,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.calendar_today_outlined,
                                size: 20,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Filter Periode",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("17 April 2023 - 21 May 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 9)),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 22,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyContainer(
                      connum: 9876543210,
                      ownname: "Ashok",
                      ctrip: 10,
                      ttrip: 120,
                      km: 1200,
                      vnum: 1,
                      picolor: Colors.amber,
                      percentage: 0.7,
                      pibackcolor: Color.fromARGB(255, 225, 202, 134),
                    ),
                    MyContainer(
                      connum: 9865543210,
                      ownname: "Arun",
                      ctrip: 10,
                      ttrip: 120,
                      km: 1000,
                      vnum: 2,
                      picolor: Colors.green,
                      percentage: 0.3,
                      pibackcolor: Color.fromARGB(255, 152, 211, 154),
                    ),
                    MyContainer(
                      connum: 9876543211,
                      ownname: "Rajkumar",
                      ctrip: 18,
                      ttrip: 126,
                      km: 3200,
                      vnum: 3,
                      picolor: Colors.red,
                      percentage: 0.8,
                      pibackcolor: Color.fromARGB(255, 224, 171, 167),
                    ),
                    MyContainer(
                      connum: 9876549210,
                      ownname: "Aravind",
                      ctrip: 8,
                      ttrip: 109,
                      km: 1100,
                      vnum: 4,
                      picolor: Colors.green,
                      percentage: 0.3,
                      pibackcolor: Color.fromARGB(255, 152, 211, 154),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    "Today Trip",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) => const DetailsContainer(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
        shadowColor: Colors.orange[100],
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              )),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
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
                                fontWeight: FontWeight.bold, fontSize: 16),
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
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                                  image: AssetImage("assets/Ellipse 2.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "Guru prasad",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                                  image: AssetImage("assets/Ellipse 3.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "saran Kumar c",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                                fontWeight: FontWeight.w400, fontSize: 14),
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
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 28,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 260,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(
              0,
              97,
              228,
              1,
            ),
            borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.menu),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(const HomePage());
                    },
                    leading: const Icon(Icons.home, color: Colors.white),
                    title: const Text(
                      "Dashboard",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const EmployeeList());
                    },
                    leading: const Icon(Icons.person_2, color: Colors.white),
                    title: const Text(
                      "Employee List",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const TripListPage());
                    },
                    leading:
                        const Icon(Icons.list_rounded, color: Colors.white),
                    title: const Text(
                      "Trip List",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const InvoicePage());
                    },
                    leading: const Icon(Icons.file_copy, color: Colors.white),
                    title: const Text(
                      "Invoice",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const VehicleListPage());
                    },
                    leading: const Icon(Icons.car_rental, color: Colors.white),
                    title: const Text(
                      "Vehicle",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const ProfileViewPage());
                    },
                    leading: const Icon(Icons.person, color: Colors.white),
                    title: const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const Center(
                              child: LogOutContainer(),
                            );
                          });
                    },
                    leading: const Icon(Icons.logout, color: Colors.white),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogOutContainer extends StatelessWidget {
  const LogOutContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                "Log Out ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(
                "Are you sure wont to log out ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize:
                            const Size(120, 40),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                                    10),
                            side: const BorderSide(
                                color: Colors.grey))),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize:
                            const Size(120, 40),
                        backgroundColor:
                            const Color(0xFF0061E4),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                  10),
                        )),
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
