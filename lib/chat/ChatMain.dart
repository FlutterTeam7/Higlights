import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:highlights/Chat/messages.dart';
import 'package:highlights/chat/messages.dart';

import '../screens/chat_screen.dart';

class ChatMain extends StatefulWidget {
  @override
  State<ChatMain> createState() => _ChatMainState();
}

User? auth = FirebaseAuth.instance.currentUser;
User? auth2 = FirebaseAuth.instance.currentUser;

class _ChatMainState extends State<ChatMain> {
  @override
  Widget build(BuildContext context) {
    var collection = FirebaseFirestore.instance.collection('chat');

    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: collection.doc(auth2!.uid).get(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            var data = snapshot.data!.data();
            List _emails = data!['specialemail'];
            List _names = data['specialname'];
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                titleSpacing: 00.0,
                centerTitle: true,
                toolbarHeight: 60.2,
                toolbarOpacity: 0.8,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                ),
                elevation: 0.00,
                title: Text(
                  "Chat",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor:
                    Color.fromARGB(255, 225, 223, 224).withOpacity(.6),
              ),
              body: ListView.separated(
                itemCount: _emails.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 5,
                    thickness: 2,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 225, 223, 224),
                      child: Text(
                        '${_emails[index][0]}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    title: Text(_emails[index]),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ChatScreen(
                            email: _emails[index],
                            name: _names[index],
                          );
                        },
                      ));
                    },
                    trailing: Icon(Icons.arrow_forward_outlined),
                  );
                },
              ),
            );
          }
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class ChatMain1 extends StatefulWidget {
  @override
  _ChatMain1State createState() => _ChatMain1State();
}

class _ChatMain1State extends State<ChatMain> {
  @override
  Widget build(BuildContext context) {
    var collection =
        FirebaseFirestore.instance.collection('chat').doc(auth!.email);

    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: collection.get(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            var data = snapshot.data!.data();
            List _emails = data!['specialemail'];
            List _names = data['specialname'];
            return ListView.builder(
              itemCount: _emails.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_emails[index]),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ChatScreen1(
                          email: _emails[index],
                          name: _names[index],
                        );
                      },
                    ));
                  },
                );
              },
            );
          }
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
