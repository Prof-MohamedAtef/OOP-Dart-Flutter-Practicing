import 'package:amit_training/whatsapp/ic_svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../login/login_page.dart';
import 'chats_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              snap: true,
              leadingWidth: 140,
              leading: Center(
                  child: Text(
                "WhatsApp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )),
              floating: true,
              toolbarHeight: 100,
              backgroundColor: Colors.green,
              actions: [
                new IconButton(
                  icon: new SvgPicture.string(
                    cameraSVGString,
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.all(5),
                  // tooltip: 'Closes application',
                  onPressed: () => {},
                ),
                IconButton(
                    onPressed: () {
                      print("clicked icon!");
                    },
                    icon: Icon(Icons.search)),
                new IconButton(
                  icon: new SvgPicture.string(
                    threeDotsSVGString,
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                  padding: const EdgeInsets.all(5),
                  // tooltip: 'Closes application',
                  onPressed: () => {},
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size(0.0, 48),
                child: Column(
                  children: [
                    TabBar(
                        isScrollable: false,
                        indicatorWeight: 1,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey[300],
                        // indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                        tabs: [
                          Tab(
                            icon: new IconButton(
                              icon: new SvgPicture.string(
                                groupSVGString,
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                              padding: const EdgeInsets.all(5),
                              // tooltip: 'Closes application',
                              onPressed: () => {},
                            ),
                          ),
                          Tab(text: "Chats"),
                          Tab(text: "Status"),
                          Tab(text: "Calls"),
                        ])
                  ],
                ),
              ),
            )
          ],
          body: TabBarView(
            children: [
              Container(
                child: Text("groups"),
              ),
              Container(
                child: ChatsScreen(),
              ),
              Container(
                child: Text("Status"),
              ),
              Container(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
