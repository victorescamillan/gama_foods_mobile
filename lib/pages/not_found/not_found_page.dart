import 'package:flutter/material.dart';
import 'package:projects/constants/index.dart';

class NotFoundPage extends StatelessWidget {
  final String page;
  const NotFoundPage({Key? key, this.page = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_outlined, size: 80, color: Constants.colors.primaryColor,),
            Text('$page ${Constants.labels.notFound}',),
          ],
        ),
      ),
    );
  }
}
