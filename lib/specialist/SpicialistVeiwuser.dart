import 'dart:io';
import "package:flutter/material.dart";
import 'compantsspecialist/continarprofile.dart';
import 'compantsspecialist/read.dart';
import 'compantsspecialist/viewimage.dart';

class Specialistprofileforuser extends StatefulWidget {
  Specialistprofileforuser(
      {required firstname,
      required email,
      required profilephotpurl,
      required career});
  String? firstname;
  String? email;
  String? profilephotpurl;
  String? career;
  @override
  State<Specialistprofileforuser> createState() =>
      _SpecialistprofileforuserState();
}

class _SpecialistprofileforuserState extends State<Specialistprofileforuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 202, 68, 255)),
        body: Stack(
          children: [
            Continarprfileview(
              career: widget.career,
              email: widget.email,
              firstname: widget.firstname,
              profilephotpurl: widget.profilephotpurl,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 175),
              child: Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  'The packeges',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              child: Readbackgesforuser(),
                            ),
                            Divider(
                              thickness: 3,
                              height: 6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  'My work',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              child: Viewimagesforuser(),
                            ),
                            Divider(
                              thickness: 3,
                              height: 6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            Divider(
              height: 3,
              color: Colors.grey,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 55,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
