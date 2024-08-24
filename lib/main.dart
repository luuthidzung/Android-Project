import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Staggered Grid Layout')),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 4, // Số cột
          itemCount: 8, // Số lượng phần tử
          itemBuilder: (BuildContext context, int index) => Container(
            color: Colors.teal[100 * (index % 9)],
            child: Center(child: Text('Tile $index')),
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.count(
              2, index.isEven ? 2 : 1), // Tạo sự không đối xứng
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
