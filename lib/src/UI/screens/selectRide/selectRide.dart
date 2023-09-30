import 'package:bohdie_app/src/UI/widgets/containerbutton1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../BottomNavigation/bottomNavigation.dart';

class SelectRide extends StatefulWidget {
  const SelectRide({super.key});

  @override
  State<SelectRide> createState() => _SelectRideState();
}

class _SelectRideState extends State<SelectRide> {
  List imagesslist = [
    'assets/icons/cycle.png',
    'assets/icons/image 3.png',
    'assets/icons/image 4.png',
    'assets/icons/two.png',
  ];
  int selectInde = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 149.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 188, 224, 253),
                      Color.fromARGB(255, 89, 89, 248),
                    ],
                  )),
              child: Row(
                children: [
                  const Text(
                    '    SELECT YOUR RIDE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50.sp,
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  const Text(
                    'Bohdie',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            SizedBox(
              height: 90.sp,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagesslist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          print("show data");
                          setState(() {
                            selectInde = index;
                          });
                        },
                        child: Container(
                          height: 90.sp,
                          width: 90.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      imagesslist[index].toString())),
                              color: selectInde == index
                                  ? const Color.fromARGB(255, 156, 249, 137)
                                  : const Color.fromARGB(255, 225, 223, 223)),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '   Main Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                const ExpansionTile(
                  title: Text("data"),
                  children: [
                    ExpansionTile(
                      title: Text("Inner data"),
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Inner data"),
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 290,
            ),
            // const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const HomePage())));
              },
              child: containerbutton1(
                text: 'Ride room',
              ),
            )
          ],
        ),
      ),
    );
  }
}
