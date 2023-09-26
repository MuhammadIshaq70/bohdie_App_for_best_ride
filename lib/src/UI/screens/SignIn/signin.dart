import 'package:bohdie_app/src/UI/screens/SignUp/signup.dart';
import 'package:bohdie_app/src/UI/screens/selectRide/selectRide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/containerbutton1.dart';
import '../../widgets/customTextField.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

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
                    Color(0xff12C6EE),
                    Color(0xff5E18BE),
                  ],
                )),
            child: const Row(
              children: [
                Text(
                  '    WellCome',
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
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  height: 16.sp,
                ),
                const Text(
                  'User Name',
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
                    hinttext: 'Enter your user name',
                    icon: const Icon(Icons.person)),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text('Remember me'),
                    SizedBox(
                      width: 55.sp,
                    ),
                    const Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 30, 162, 83),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.sp,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SelectRide()));
                    },
                    child: containerbutton1(
                      text: 'Sign up',
                    ),
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
                    const Text('Don`t have an account ? '),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUPscreen()));
                      },
                      child: const Text(
                        'Sign up',
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
          )
        ],
      ),
    );
  }
}
