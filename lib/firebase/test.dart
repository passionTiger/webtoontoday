import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

DatabaseReference db = new FirebaseDatabase().reference().child("월요일");
