import 'package:bohdie_app/src/UI/screens/SignUp/signup.dart';
import 'package:bohdie_app/src/UI/widgets/containerbutton2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 414.sp,
            width: 426.sp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber,
                image: const DecorationImage(
                    image: AssetImage('assets/icons/bohdie.png')),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff12C6EE),
                    Color(0xff5E18BE),
                  ],
                )),
          ),
          SizedBox(
            height: 60.sp,
          ),
          ContainerButton2(
            color: const Color(0xFF3A579B),
            icon: Icons.g_mobiledata,
            text: '  Continue with google',
          ),
          SizedBox(
            height: 16.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUPscreen()));
            },
            child: ContainerButton2(
              color: const Color(0xffFB613B),
              icon: Icons.email_outlined,
              text: '   Sign up with E-mail',
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Center(
              child: Text(
            'Skip for Now',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          )),
          const SizedBox(
            height: 60,
          ),
          const Center(
              child: Text(
            'Some feature of this app require a login ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ))
        ],
      ),
    );
  }
}
