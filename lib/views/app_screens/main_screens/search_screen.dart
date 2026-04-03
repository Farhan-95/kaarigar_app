import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  bool isFilled = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actionsPadding: EdgeInsets.only(right: 20),
        actions: [Card(child: IconButton(onPressed: (){}, icon: Icon(Icons.search)))],
        backgroundColor: Color(0xff553FA5),
        title: SizedBox(
          width: 250,
          height: 50,
          child: TextField(
            controller: searchController,
            onChanged: (value){
                if(searchController.text.isNotEmpty){
                 setState(() {
                   isFilled = true;
                 });
                }
                else{
                  setState(() {
                    isFilled = false;
                  });
                }
            },
            decoration: InputDecoration(
              hintText: 'Search Here',
              prefixIcon: Icon(Icons.search, color: Color(0xff553FA5)),
              suffixIcon:isFilled?IconButton(onPressed: (){searchController.clear();
                setState(() {
                  isFilled = false;
                });}, icon: Icon(Icons.close)):SizedBox.shrink(),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 2, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
