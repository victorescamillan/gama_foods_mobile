import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:projects/constants/index.dart';
import 'package:projects/core/models/app_module.dart';
import 'package:projects/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final data = Constants.data.getAppModules();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Constants.labels.appName,), actions: [
          IconButton(onPressed: (){
            context.read<ThemeProvider>().toggleTheme();
          }, icon: const Icon(Icons.ac_unit))
        ],),
        body: GridView.count(crossAxisCount: 2,
          children: List.generate(data.length, (index) {
            return _moduleCard(data[index]);
          }),));
  }

  Widget _moduleCard(AppModule data) {
    return InkWell(
      onTap: (){},
      child: Card(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesome5.tag, size: 40, color: Constants.colors.primaryColor,),
          const SizedBox(height: 20,),
          Text(data.name, style: Theme.of(context).textTheme.subtitle1,),
        ],
      )),
    );
  }

}
