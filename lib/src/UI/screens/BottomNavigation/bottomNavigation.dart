import 'package:bohdie_app/src/UI/screens/Rides/Rides.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myindex = 0;
  List<Widget> widgetlist = [
    const RideScreen(),
    // const GetPhotos(),
    // const GetPosts(),
    // const GetComment()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.cyanAccent.shade200,
            currentIndex: myindex,
            onTap: (Index) {
              setState(() {
                myindex = Index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: 'Rides',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.post_add_sharp),
                label: 'Posts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.comment),
                label: 'Comments',
              ),
            ]),
        body: Center(
          child: widgetlist[myindex],
        ));
  }
}
