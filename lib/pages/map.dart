import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({ Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Karta över milot'),
        ),
      body: Gridden(),
      ),
    );
  }
}

class Gridden extends StatelessWidget {
  const Gridden({ Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
      axisDirection: AxisDirection.down,
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 0.75,
                    child: InkWell(
                      onTap: (){
                        print('hej');
                      },
                      child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.brown,
                      ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: Container(
                      color: Colors.teal,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 0.75,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                ],
            ),
    );
  }
}