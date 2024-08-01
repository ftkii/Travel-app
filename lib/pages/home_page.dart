import 'package:flutter/material.dart';
import 'package:travel_app/component/card_country.dart';
import 'package:travel_app/component/country_tile.dart';
import 'package:travel_app/models/country.dart';
import 'package:travel_app/pages/deteils_coun.dart';
import 'package:travel_app/util/bottom_bar.dart';
import 'package:travel_app/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageinState();
}

class _HomePageinState extends State<HomePage> {
  List<Widget> categorie = [
    MyTab(Textpath: "Sights"),
    MyTab(Textpath: "Tour"),
    MyTab(Textpath: "Adventure"),
  ];

  List count = [
    Country(
      name: "ALula",
      conntry: "Saudi arabia",
      imagePath: "images/al-`ula.jpg",
      rating: "4.6",
      date: "25 March - 29 March, 2024",
      price: "50\$",
    ),
    Country(
      name: "Diriyah",
      conntry: "Saudi arabia",
      imagePath: "images/diraiyah.jpg",
      rating: "5",
      date: "05 April  - 12 April, 2024",
      price: "100\$",
    ),
    Country(
      name: "Aseer",
      conntry: "Saudi arabia",
      imagePath: "images/aseer.jpg",
      rating: "3.5",
      date: "09 April  - 12 April, 2024",
      price: "85\$",
    ),
  ];
  //navigator to country deteils page
  void navigateToCountryDeteils(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DeteilsCoun(
            count: count[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categorie.length,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: const BottomBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Explor"),
          actions: [
            Builder(
              builder: (context) => IconButton(
                padding: EdgeInsets.only(right: 20),
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[50],

        //search field
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                suffixIcon: Icon(Icons.settings_voice_rounded),
                prefixIcon: Icon(Icons.search),
                hintText: "Mount Bruno",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              color: Colors.grey[100],
              child: TabBar(
                padding: EdgeInsets.all(15),
                physics: ClampingScrollPhysics(),
                tabs: categorie,
                dividerColor: Colors.grey[100],
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.purple[200]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: count.length,
                itemBuilder: (context, index) => CountryTile(
                  country: count[index],
                  onTap: () => navigateToCountryDeteils(index),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: count.length,
                itemBuilder: (context, index) => CardCountry(
                  country: count[index],
                  onTap: () => navigateToCountryDeteils(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
