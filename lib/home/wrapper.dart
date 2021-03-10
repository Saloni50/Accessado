import 'package:accassado/authenticate/authenticate.dart';
import 'package:accassado/home/home.dart';
import 'package:accassado/modules/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
