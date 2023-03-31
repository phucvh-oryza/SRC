import 'package:erp_app/screens/login_screen.dart';
import 'package:erp_app/screens/test.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 1;
  bool _showFirstContainer = true;

  void _changePage(int page) {
    setState(() {
      _currentPage = page;
      _showFirstContainer = page == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/office.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Xác nhận"),
                                          content:
                                              Text("Bạn có chắc muốn thoát?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(false);
                                              },
                                              child: Text("Không"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          LoginScreen()),
                                                );
                                              },
                                              child: Text("Có"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.arrow_back),
                                  color: Colors.white,
                                ),
                                Text(
                                  'Team',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TestScreen()),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.qr_code_scanner_outlined,
                                    color: Colors.white,
                                  ),
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.update),
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.notifications_none),
                                  color: Colors.white,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.textsms_outlined),
                                  color: Colors.white,
                                ),
                                CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xffFDCF09),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                          "https://s3.o7planning.com/images/boy-128.png"),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -90,
                  right: 20,
                  left: 20,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 10),
                            blurRadius: 3,
                            spreadRadius: -10)
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 22,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 22.0, top: 2),
                                    child: Text(
                                      'Ứng dụng',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: IconButton(
                                            onPressed: _currentPage == 1
                                                ? null
                                                : () => _changePage(
                                                    _currentPage - 1),
                                            icon: Icon(Icons.arrow_back_ios),
                                            iconSize: 10,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 10,
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            child: Text(
                                              '/',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 10,
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: _currentPage == 2
                                                ? null
                                                : () => _changePage(
                                                    _currentPage + 1),
                                            icon: Icon(Icons.arrow_forward_ios),
                                            iconSize: 10,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: _showFirstContainer
                                      ? Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.language),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý công \nviệc',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.language),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Lịch họp\n',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.language),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý phòng \nhọp',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.language),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý \nworkspace',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.album),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý công \nviệc 2',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.album),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Lịch họp\n',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.album),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý phòng \nhọp',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                                Icons.album),
                                                            iconSize: 25,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            'Quản lý \nworkspace',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      DefaultTabController(
                          length: 4, // length of tabs
                          initialIndex: 0,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  height: 23,
                                  child: TabBar(
                                    indicatorColor: Colors.blue,
                                    labelColor: Colors.blue,
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.w600),
                                    unselectedLabelColor: Colors.black,
                                    tabs: [
                                      Tab(text: 'Tổng quan'),
                                      Tab(text: 'Quá hạn'),
                                      Tab(text: 'Trong tuần'),
                                      Tab(text: 'Timeline'),
                                    ],
                                  ),
                                ),
                                Container(
                                    height: 430,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.white,
                                                width: 0.5))),
                                    child: TabBarView(children: <Widget>[
                                      Container(
                                        child: Center(
                                            child: Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                color: Colors.amber,
                                                height: 100,
                                                width: 100,
                                              )
                                            ],
                                          ),
                                        )),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 2',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 3',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Display Tab 4',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ]))
                              ])),
                    ]),
              ),
            ),
            // //h
          ],
        ),
      )),
    );
  }
}
