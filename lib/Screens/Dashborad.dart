import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thired_eyes/Constants/Colors.dart';
import 'package:thired_eyes/Model/Message.dart';
import 'package:http/http.dart' as http;

class Dashborad extends StatefulWidget {
  Dashborad({super.key});

  @override
  State<Dashborad> createState() => _DashboradState();
}

class _DashboradState extends State<Dashborad> {
  Message? userw;
  List<Message>? messages;

  // Future<void> fetchMessages() async {
  //   final response = await http.get(Uri.parse('your_api_endpoint_here'));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       messages = List<Message>.from(
  //         jsonDecode(response.body).map((data) => Message.fromJson(data)),
  //       );
  //     });
  //   } else {
  //     // Handle error
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // fetchMessages();
  }

  // String getCurrentDate() {
  //   final now = DateTime.now();
  //   final formatter = DateFormat('yyyy-MM-dd');
  //   return formatter.format(now);
  // }

  // String getCurrentTime() {
  //   final now = DateTime.now();
  //   final formatter = DateFormat('HH:mm');
  //   return formatter.format(now);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryColor),
      body: Container(
          height: 200,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Card(
            color: primaryColor,
            child: ListTile(
              title: Text(
                "message  ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "16/05/2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "3.00pm",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
