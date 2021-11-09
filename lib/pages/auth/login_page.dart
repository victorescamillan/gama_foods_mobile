import 'package:flutter/material.dart';
import 'package:projects/app_router.dart';
import 'package:projects/constants/index.dart';
import 'package:projects/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Constants.sizes.pagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Utils.appWidth(context),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, AppRouter.generateRoute(const RouteSettings(name: Routes.homeRoute)));
                }, child: Text(Constants.buttons.login),))
          ],
        ),
      ),
    );
  }
}
