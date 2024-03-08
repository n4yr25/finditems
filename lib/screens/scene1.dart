import 'package:finditems/backdata/vigies.dart';
import 'package:flutter/material.dart';

class Scene1Screen extends StatefulWidget {
  const Scene1Screen({super.key});

  @override
  State<Scene1Screen> createState() => _Scene1ScreenState();
}

class _Scene1ScreenState extends State<Scene1Screen> {
  void foundItems(int index) {
    setState(() {
      vegList[index].isFound = !vegList[index].isFound;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " EASY",
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("LEVEL"),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          children: [
            Container(
              width: 300,
              child: Text(
                "Find fruits that are there in 'Bahay Kubo'",
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/scene1.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 120,
                    child: InkWell(
                      onTap: () {
                        foundItems(0);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[0].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: InkWell(
                      onTap: () {
                        foundItems(1);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[1].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 120,
                    child: InkWell(
                      onTap: () {
                        foundItems(2);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[2].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 280,
                    right: 110,
                    child: InkWell(
                      onTap: () {
                        foundItems(3);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[3].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 200,
                    left: 25,
                    child: InkWell(
                      onTap: () {
                        foundItems(4);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[4].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 20,
                    child: InkWell(
                      onTap: () {
                        foundItems(5);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[5].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 500,
                    right: 50,
                    child: InkWell(
                      onTap: () {
                        foundItems(6);
                        print("Found");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[6].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 120,
                    child: InkWell(
                      onTap: () {
                        foundItems(7);
                        print("Found: " + vegList[7].name);
                        print("isFound: " + vegList[7].isFound.toString());
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(vegList[7].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Things to find",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: vegList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(vegList[index].image),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(
                                        vegList[index].isFound == true
                                            ? 0.5
                                            : 0.0),
                                    BlendMode.darken,
                                  ),
                                ),
                              ),
                              child: vegList[index].isFound == true
                                  ? Icon(
                                      Icons.check_circle_outline_rounded,
                                      size: 50,
                                      color: Colors.green,
                                    )
                                  : Container()),
                        );
                      },
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
