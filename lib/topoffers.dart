import 'package:flutter/material.dart';
import 'package:ziggy/z_home.dart';

class TopOffer extends StatefulWidget {
  const TopOffer({super.key});

  @override
  State<TopOffer> createState() => _TopOfferState();
}

class _TopOfferState extends State<TopOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 199, 198),
      appBar: AppBar(
        title: const Icon(Icons.arrow_downward),
        backgroundColor: const Color.fromARGB(255, 218, 199, 198),
        leadingWidth: 90,
        titleSpacing: 0,
        leading: const Text("Others",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
        actions: const [
          Icon(Icons.sell),
          Text(
            "Offers",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 360,
                height: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.brown),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 120),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(width: 25),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ),
                        const SizedBox(width: 25),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const SizedBox(width: 120),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.brown,
                    child: const Text("Sign-in"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ZiggyHome()));
                    },
                  ),
                ),
              ),
            /*  Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        return SizedBox(
                          height: 60,
                          width: 30,
                          child: ListTile(
                            leading: Row(
                              children: [
                                Text((index + 1).toString()),
                                const SizedBox(width: 20),
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blueGrey,
                                ),
                                const SizedBox(width: 30),
                                const Text("Nikitha"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),*/
            ],
          ),
        ),
      ),
      
    );
  }
}
