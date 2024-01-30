import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, bottom: 150.0),
                          child: Text(
                            "Hi Guy",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160.0,
                    left: 16.0,
                    right: 16.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tìm kiếm",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Container(
                height: 100,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    tabs: [

                      Tab(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/image/ico_hotel.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Hotels',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/image/ico_hotel_plane.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Flights',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/image/ico_plane.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'All',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    GridView.count(
                      padding: EdgeInsets.all(10),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing:  10,
                      children: [
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        )
                      ],
                    ),
                    // ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: student.length,
                    //     itemBuilder: (BuildContext context, index) {
                    //       return Text(student[index]);
                    //     })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
