import 'package:flutter/material.dart';
import 'package:hotelapp/pages/home_page/best_hotels_widget.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      "What kind of Hotel you need?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search for hotels...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Best Hotels",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel1.jpg",
                            name: "Hotel 1"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel2.jpg",
                            name: "Hotel 2"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel3.jpg",
                            name: "Hotel 3"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel4.jpg",
                            name: "Hotel 4"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel5.jpg",
                            name: "Hotel 5"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Luxury Hotels",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel3.jpg",
                            name: "Hotel 1"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel5.jpg",
                            name: "Hotel 2"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel1.jpg",
                            name: "Hotel 3"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel4.jpg",
                            name: "Hotel 4"),
                        BestHotelsWidget(
                            image: "assets/images/ic_hotel2.jpg",
                            name: "Hotel 5"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
