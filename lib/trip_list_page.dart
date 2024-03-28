import 'package:flutter/material.dart';
import 'package:sample_1/employee_list.dart';
import 'package:sample_1/homepage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TripListPage extends StatefulWidget {
  const TripListPage({super.key});

  @override
  State<TripListPage> createState() => _TripListPageState();
}

class _TripListPageState extends State<TripListPage>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;
  int i = 0;
  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppbar(
        scaffoldKey: _scaffoldKey,
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const Text(
                      "Trips",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          minimumSize: const MaterialStatePropertyAll(Size(90, 45)),
                          side: const MaterialStatePropertyAll(
                              BorderSide(color: Color(0xFF0061E4), width: 1)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                      child: const Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF0061E4)),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          minimumSize:
                              const MaterialStatePropertyAll(Size(110, 45)),
                          side: const MaterialStatePropertyAll(
                              BorderSide(color: Color(0xFF0061E4), width: 1)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                      child: const Text(
                        "Sort by",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF0061E4)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 180, 221, 255),
                    borderRadius: BorderRadius.circular(15)),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  onTap: (e) {
                    setState(() {
                      i = e;
                    });
                  },
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: const Color.fromRGBO(
                      0,
                      97,
                      228,
                      1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  tabs: const [
                    Tab(
                        child: Text(
                      "Today's Trip",
                      style: TextStyle(
                          fontSize: 16,
                         // color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: Text(
                      "Trip History",
                      style: TextStyle(
                          fontSize: 16,
                        //  color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: Text(
                      "Upcoming Trip",
                      style: TextStyle(
                          fontSize: 16,
                        //  color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: Text(
                      "Service Trip",
                      style: TextStyle(
                          fontSize: 16,
                        //  color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: Text(
                      "Special Trip",
                      style: TextStyle(
                          fontSize: 16,
                        //  color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ))
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          const TodayTripContainer(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          const TripHistoryContainer(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                          const UpcomingTripContainer(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          const ServiceTripContainer(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          const SpecialTripContainer(),
                    ),
                  ),
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialTripContainer extends StatelessWidget {
  const SpecialTripContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         elevation: 5,
         shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S Usain Sheik",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3rd Mile, Thoothukudi.",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "New Bus Stand, Thoothukudi",
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
                "3 Members",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.green[500],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.done,
                              color: Colors.white, size: 20))),
                  const SizedBox(width: 20),
                  CircleAvatar(
                      backgroundColor: Colors.red[600],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close,
                              color: Colors.white, size: 20))),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 25,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTripContainer extends StatelessWidget {
  const ServiceTripContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         elevation: 5,
         shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                  width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TN 69 B 1231",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kia Sorento",
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
                        "Type of service : ",
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "Oil change",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                "3 Members",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              const Text(
                "14-11-2023",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Driver : ",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
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
              const Text(
                "Rs. 450",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(0, 97, 228, 1)),
                    minimumSize: MaterialStatePropertyAll(Size(80, 35))),
                child: const Text(
                  "View",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UpcomingTripContainer extends StatelessWidget {
  const UpcomingTripContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         elevation: 5,
         shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                  width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S Usain Sheik",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3rd Mile, Thoothukudi.",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "New Bus Stand, Thoothukudi",
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
                "3 Members",
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
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 253, 194, 189)),
                      minimumSize: const MaterialStatePropertyAll(
                        Size(100, 35),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide.none))),
                  child: const Text("Cancelled",
                      style: TextStyle(color: Colors.red))),
            ],
          ),
        ),
      ),
    );
  }
}

class TripHistoryContainer extends StatelessWidget {
  const TripHistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         elevation: 5,
         shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                  width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S Usain Sheik",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3rd Mile, Thoothukudi.",
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        "New Bus Stand, Thoothukudi",
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
                "3 Members",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Row(
                children: [
                  const Text("4.5",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  const SizedBox(width: 15),
                  RatingBarIndicator(
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    rating: 4.5,
                    itemCount: 5,
                    itemSize: 19,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 191, 244, 193)),
                      minimumSize: const MaterialStatePropertyAll(
                        Size(100, 35),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide.none))),
                  child: Text("Completed",
                      style: TextStyle(color: Colors.green[600]))),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 28,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class TodayTripContainer extends StatelessWidget {
  const TodayTripContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         elevation: 5,
         shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                  width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 28,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
