import 'package:bohdie_app/src/UI/screens/SignIn/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/containerbutton1.dart';
import '../../widgets/customTextField.dart';

class SignUPscreen extends StatefulWidget {
  const SignUPscreen({super.key});

  @override
  State<SignUPscreen> createState() => _SignUPscreenState();
}

class _SignUPscreenState extends State<SignUPscreen> {
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
                      Color(0xff12C6EE),
                      Color(0xff5E18BE),
                    ],
                  )),
              child: const Row(
                children: [
                  Text(
                    '      Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  CustomTextField(
                      hinttext: 'Enter your full name',
                      icon: const Icon(Icons.person)),
                  SizedBox(
                    height: 24.sp,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  CustomTextField(
                      hinttext: 'Enter your password',
                      icon: const Icon(Icons.person)),
                  SizedBox(
                    height: 24.sp,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  CustomTextField(
                      hinttext: 'Enter your email',
                      icon: const Icon(Icons.email)),
                  SizedBox(
                    height: 24.sp,
                  ),
                  const Text(
                    'Mobile number',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  CustomTextField(
                      hinttext: 'Enter your mobile number',
                      icon: const Icon(Icons.person)),
                  SizedBox(
                    height: 32.sp,
                  ),
                  Center(
                    child: containerbutton1(
                      text: 'Sign up',
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  const Center(child: Text('OR')),
                  SizedBox(
                    height: 24.sp,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60.sp,
                        width: 60.sp,
                        child: const Image(
                          image: AssetImage(
                            'assets/icons/google-PNG.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 60.sp,
                        width: 60.sp,
                        child: const Image(
                          image: AssetImage(
                            'assets/icons/lindin.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account ? '),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignInScreen()));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 13, 231, 176),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
