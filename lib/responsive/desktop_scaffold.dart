import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: myAppBar,
      body: Container(
        child: Row(
          children: [
            //mon drawer
            myDrawer,
            //le reste du corps
            Expanded(
              flex: 2,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 4,
                      child: SizedBox(
                        child: GridView.builder(
                            itemCount: 4,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return const MyBox();
                            }),
                      ),
                    ),
                    Expanded(child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        })),
                  ],
                )
            ),
            Expanded(child: Column(
              children: [
                Container(
                  color: Colors.red,
                )
              ],
            ))

          ],
        ),
      ),
    );
  }
}
