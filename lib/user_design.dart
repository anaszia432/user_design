import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:user_design/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookHistory(
        title: "Booking Order History",
      ),
    );
  }
}

class BookHistory extends StatefulWidget {
  const BookHistory({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<BookHistory> createState() => BookHistoryState();
}

class BookHistoryState extends State<BookHistory> {
  String? _email;
  bool valuefirst = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 42, 52),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: TextButton(
                        child: Icon(
                          Icons.arrow_back,
                          size: 18,
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.only(top: 1)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 247, 241, 241)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.blue)))),
                        onPressed: () => null),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Go ahead and set up your account',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign in-up to enjoy the best managing experience',
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 225, 211, 211)),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: Container(
                  // color: Colors.blue,
                  height: 620,
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 20),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 217, 215, 215),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TabBar(
                              indicatorPadding: EdgeInsets.all(6),
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(
                                  text: 'Login',
                                ),
                                Tab(
                                  text: 'Register',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: [
                                  Expanded(
                                    child: ScrollConfiguration(
                                      behavior: const ScrollBehavior()
                                          .copyWith(overscroll: false),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  right: 15,
                                                  bottom: 10),
                                              child: TextField(
                                                controller: email,
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                //controller: emailController,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  labelText: 'Email Id',
                                                  hintText:
                                                      'Please enter your e-mail here',
                                                  prefixIcon: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.email_outlined,
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.0),
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _email = value.trim();
                                                  });
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  right: 15,
                                                  bottom: 10),
                                              child: TextField(
                                                controller: password,
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                //controller: mobileController,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  labelText: 'Password',
                                                  hintText:
                                                      'Please enter your Password here',
                                                  prefixIcon: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.lock_outline,
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.0),
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _email = value.trim();
                                                  });
                                                },
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        width: 20,
                                                        height: 20,
                                                        child: Checkbox(
                                                          checkColor:
                                                              Colors.white,
                                                          activeColor:
                                                              Colors.blue,
                                                          value:
                                                              this.valuefirst,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.valuefirst =
                                                                  value!;
                                                            });
                                                          },
                                                        ),

                                                        //   CheckboxListTile(onChanged: (bool? value) {  },
                                                        //  value: true,

                                                        //  )
                                                      ),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      const Text('Remeber me')
                                                    ]),
                                                TextButton(
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.blue,
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text(
                                                        'Forgot Password?'))
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20, left: 15, right: 15),
                                              child: SizedBox(
                                                width: 500,
                                                height: 50,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Colors.blue),
                                                    ),
                                                    child: Text(
                                                      'Login',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomeScreen(
                                                            email:
                                                                "${email.text}",
                                                            password:
                                                                "${password.text}",
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 5,
                                                    ),
                                                    child:
                                                        Text(' Or login with '),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  height: 60,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                      )),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image(
                                                          height: 30,
                                                          width: 30,
                                                          image: AssetImage(
                                                              'images/assets/google.png')),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Google',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 60,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                      )),
                                                  child: Row(
                                                    children: [
                                                      Image(
                                                          height: 60,
                                                          width: 60,
                                                          image: AssetImage(
                                                              'images/assets/apple.png')),
                                                      Text(
                                                        'Apple',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Center(child: Text('This is Upcoming Page')),
                            ],
                          ),
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
    );
  }
}
