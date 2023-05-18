import 'package:flutter/material.dart';
import 'package:ziggy/login.dart';
import 'package:ziggy/topoffers.dart';

class ZiggyHome extends StatefulWidget {
  const ZiggyHome({super.key});

  @override
  State<ZiggyHome> createState() => _ZiggyHomeState();
}

class _ZiggyHomeState extends State<ZiggyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 199, 198),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 218, 199, 198),
        title: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            icon: const Icon(Icons.arrow_drop_down)),
        leadingWidth: 85,
        titleSpacing: 0,
        leading: const Text(
          "Others",
          style: TextStyle(fontSize: 35),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TopOffer()));
              },
              icon: const Icon(
                Icons.sell,
                color: Colors.white,
              )),
          const Text("OFFERS", style: TextStyle(fontSize: 30))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 110,
              width: 4,
              color: Colors.deepOrange,
            ),
            const SizedBox(width: 40),
            Container(
              width: 270,
              height: 180,
              color: const Color.fromARGB(255, 218, 199, 198),
              child: Column(
                children: const <Widget>[
                  Text(
                      '\n\nwe are now delivering food\n groceries and other essential.\n',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    'Food & Genie services (Mon-Sat)-6:00am to 9:00pm. Groceries & Meat (Mon-Sat)-6:00am to 6:00pm. Dairy (Mon-Sat)-6:00am to 6:00pm (Sun)-6:00am to 12:00pm.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ]),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 320,
                height: 140,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  color: Colors.deepOrangeAccent,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: const [
                        Text(
                          "\nRestaurants",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        Text(
                          "No-contact delivery available",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ]),
                    ),
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/food1.jpeg'),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 320,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(12)),
                  color: Colors.deepOrange,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text("View All"),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  width: 95,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange,
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Genie",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 95,
                      height: 76,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(12)),
                      ),
                      child: Image.asset("assets/images/food2.jpeg",
                          fit: BoxFit.fill),
                    ),
                  ]),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 95,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange,
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Grocery",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 95,
                      height: 77,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(12)),
                      ),
                      child: Image.asset("assets/images/food3.jpeg",
                          fit: BoxFit.fill),
                    ),
                  ]),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 95,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepOrange,
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Meat",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 95,
                      height: 76,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(12)),
                      ),
                      child: Image.asset(
                        "assets/images/food4.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                SizedBox(width: 15),
                Icon(Icons.thumb_up),
                Text(
                  "  Top Picks For You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Stack(
                  children: [
                    SizedBox(
                      width: 320,
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                width: 85,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(12)),
                                ),
                                child: Image.asset("assets/images/food5.jpeg",
                                    fit: BoxFit.fill),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Thalappakati\n Biriyani Hotel\n32 mins",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(child: Container())
                  ],
                ),
                const SizedBox(height: 200)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
