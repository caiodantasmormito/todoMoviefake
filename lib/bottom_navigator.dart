import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(),
      bottomNavigationBar: getBottomNavigation(),
    );
  }

  Widget getBottomNavigation() {
    return Column(
      children: const [Padding(padding: EdgeInsets.only(left: 15), child: Text(
          'The Best Of Johnny Depp',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
    )],
    
    );
  }
}
