import 'package:dashboard_ui/ui/models/drawer_model.dart';
import 'package:dashboard_ui/uitils/shared_compenet/custom_list_tile_item.dart';
import 'package:flutter/material.dart';

class DrawerListview extends StatefulWidget {
  const DrawerListview({super.key});

  @override
  State<DrawerListview> createState() => _DrawerListviewState();
}
int selectedIndex=0;
class _DrawerListviewState extends State<DrawerListview> {
  @override
  Widget build(BuildContext context) {
    var itemList = DrawerModel.drawerList;
    return SliverList.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              selectedIndex=index;
              setState(() {
                
              });
            },
            child: CustomListTileItem(
              model: itemList[index],
              isActive:selectedIndex==index ,
            ),
          );
        });
  }
}