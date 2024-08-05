import 'package:application/screen/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.only(
              top: 50.0,
              left: 30.0,
            ),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFFB91635),
              Color(0Xff621d3c),
              Color(0xFF311937)
            ])),
            child: Text(
              "Create Your\nAccount",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10.0, left: 30.0, right: 30.0, bottom: 30.0),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name", prefixIcon: Icon(Icons.person_outline)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Gmail",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Gmail", prefixIcon: Icon(Icons.mail_outline)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                  obscureText: true, //ปิดบังpassword
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFFB91635),
                          Color(0Xff621d3c),
                          Color(0xFF311937)
                        ]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, //ย้ายไปฝั่งขวาสุด
                  children: [
                    Text(
                      "Already have an account",
                      style: TextStyle(
                          color: Color(0xFF311937),
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color(0Xff621d3c),
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
