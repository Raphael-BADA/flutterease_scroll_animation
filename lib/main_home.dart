import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterease_sliver_scroll/listview_items.dart';
import 'package:flutterease_sliver_scroll/scroll_items.dart';
import 'package:flutterease_sliver_scroll/utils.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  ScrollController firstScrollController = ScrollController();
  bool isExpanded = true;
  bool isExpanded2 = true;
  @override
  void initState() {
    print('initialize');
    firstScrollController.addListener(() {
      print(firstScrollController.position.pixels);
      if (firstScrollController.position.pixels >
          firstScrollController.position.minScrollExtent +
              context.heightPercent(20)) {
        print("VIVEZEG1");
        setState(() {
          isExpanded = false;
        });
      }
      if (firstScrollController.position.pixels >
          firstScrollController.position.minScrollExtent +
              context.heightPercent(1)) {
        print("VIVEZEG1");
        setState(() {
          isExpanded2 = false;
        });
      }
      if (firstScrollController.position.pixels <
          firstScrollController.position.minScrollExtent +
              context.heightPercent(5)) {
        print("VIVEZEG2");
        setState(() {
          isExpanded = true;
        });
      }
      if (firstScrollController.position.pixels <
          firstScrollController.position.minScrollExtent +
              context.heightPercent(1)) {
        print("VIVEZEG2");
        setState(() {
          isExpanded2 = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: Stack(
        children: [
          SizedBox(
            height: context.heightPercent(
              100,
            ),
            child: SingleChildScrollView(
              controller: firstScrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: double.infinity,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "GOOGLE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: context.t1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: context.widthPercent(5),
                        top: context.heightPercent(5),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            "RB",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: context.t1,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.15),
                  ScrollItems(),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: SizedBox(
              height: context.heightPercent(100),
              width: context.widthPercent(100),
              child: Column(
                children: [
                  AnimatedSize(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: SizedBox(
                      width: context.widthPercent(90),
                      height: isExpanded2
                          ? context.heightPercent(20)
                          : context.heightPercent(5),
                      // color: Colors.amber,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        width: context.widthPercent(90),
                        height: isExpanded
                            ? context.heightPercent(20)
                            : context.heightPercent(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: context.widthPercent(4),
                                  ),
                                  height: context.heightPercent(8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.search,
                                            size: context.widthPercent(8),
                                          ),
                                          context.hori4,
                                          Text(
                                            'Search',
                                            style: TextStyle(
                                              fontSize: context.t3,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.mic,
                                            size: context.widthPercent(8),
                                          ),
                                          context.hori4,
                                          Icon(
                                            Icons.camera,
                                            color: Colors.blue,
                                            size: context.widthPercent(8),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                if (isExpanded == true) context.vert1,
                                if (isExpanded == true)
                                  Container(
                                    height: context.heightPercent(10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        customcolumn("Gallery", Icons.image,
                                            Colors.blue),
                                        customcolumn("Translate",
                                            Icons.translate, Colors.green),
                                        customcolumn("Homework", Icons.book,
                                            Colors.orange),
                                        customcolumn("Sing", Icons.music_note,
                                            Colors.purple),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  customcolumn(String text, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          width: context.widthPercent(15),
          height: context.widthPercent(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: color),
        ),
        context.vert1,
        Text(text),
      ],
    );
  }
}
