import 'package:flutter/material.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/white_app_bar.dart';

class ServiceCategoryScreen extends StatefulWidget {
  const ServiceCategoryScreen({super.key});

  @override
  State<ServiceCategoryScreen> createState() => _ServiceCategoryScreenState();
}

class _ServiceCategoryScreenState extends State<ServiceCategoryScreen> {
  List catList = [
    'Plumber',
    'Carpenter',
    'Electrician',
    'Computer Technician',
    'Client',
  ];

  int listIndex = -1;
  String? listValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar(title: 'Services Categories'),
      body: ListView(
        children: [
          for (int i = 0; i <= catList.length - 1; i++)
            Column(
              children: [
                ListTile(
                  title: Text(catList[i]),
                  onTap: () {
                    setState(() {
                      listIndex = i;
                      listValue = catList[i];
                    });
                  },
                  trailing: listIndex == i
                      ? Icon(Icons.done, color: Colors.black)
                      : null,
                ),
                Divider(),
              ],
            ),
        ],
      ),
    );
  }
}
