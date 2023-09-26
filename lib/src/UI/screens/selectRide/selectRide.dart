import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectRide extends StatefulWidget {
  const SelectRide({super.key});

  @override
  State<SelectRide> createState() => _SelectRideState();
}

class _SelectRideState extends State<SelectRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const Column(
            children: [
              Text(
                'Main Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 90.sp,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 90.sp,
                      width: 90.sp,
                      decoration: const BoxDecoration(color: Colors.amber),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
