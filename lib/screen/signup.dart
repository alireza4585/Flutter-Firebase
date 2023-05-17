import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

FocusNode F1 = FocusNode();
FocusNode F2 = FocusNode();

final email = TextEditingController();
final password = TextEditingController();

class _Sign_UpState extends State<Sign_Up> {
  Future SignUp() async {
    var CreateUser = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    F1.addListener(() {
      setState(() {});
    });
    F2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                // sign up text
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            // email text
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // textfield email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: Container(
                color: Color.fromARGB(157, 53, 53, 53),
                child: TextField(
                  controller: email,
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  focusNode: F1,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffcf25af),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Password',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // textfield password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: Container(
                color: Color.fromARGB(157, 53, 53, 53),
                child: TextField(
                  controller: password,
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  focusNode: F2,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffcf25af),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 45),
            // sign up
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: InkWell(
                onTap: () => SignUp(),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffb716dc),
                        Color(0xffcf25af),
                      ],
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account? ',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    ' Login ',
                    style: TextStyle(
                      color: Colors.grey.shade50,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
