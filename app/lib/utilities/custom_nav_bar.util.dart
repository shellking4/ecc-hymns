// ignore_for_file: prefer_if_null_operators
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class CustomNavBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final List<PersistentBottomNavBarItem>? items;
  final ValueChanged<int>? onItemSelected;

  CustomNavBarWidget({
    Key? key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildMiddleItem(final PersistentBottomNavBarItem item,
          final bool isSelected, final double? height) => Padding(
              padding: EdgeInsets.only(
                  top:  0.0,
                  bottom: 0.0),
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: const Offset(0, -23),
                    child: Center(
                      child: Container(
                        width: 150,
                        height: height,
                        margin: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item.activeColorPrimary,
                          border:
                              Border.all(color: Colors.transparent, width: 5),
                          //boxShadow: BoxShadow.lerp(a, b, t),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: height,
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: IconTheme(
                                      data: IconThemeData(
                                          size: item.iconSize,
                                          color: item.activeColorSecondary ??
                                              item.activeColorPrimary),
                                      child: isSelected
                                          ? item.icon
                                          : item.inactiveIcon ?? item.icon,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (item.title == null)
                    const SizedBox.shrink()
                  else
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Material(
                          type: MaterialType.transparency,
                          child: FittedBox(
                              child: Text(
                            item.title!,
                            style: item.textStyle != null
                                ? (item.textStyle!.apply(
                                    color: isSelected
                                        ? (item.activeColorSecondary ??
                                            item.activeColorPrimary)
                                        : item.inactiveColorPrimary))
                                : TextStyle(
                                    color: isSelected
                                        ? (item.activeColorPrimary)
                                        : item.inactiveColorPrimary,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                          )),
                        ),
                      ),
                    )
                ],
              ),
            );

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                          ? item.activeColorPrimary
                          : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                          ? item.activeColorPrimary
                          : item.inactiveColorPrimary),
              child: item.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                  child: Text(
                item.title!,
                style: TextStyle(
                    color: isSelected
                        ? (item.activeColorSecondary == null
                            ? item.activeColorPrimary
                            : item.activeColorSecondary)
                        : item.inactiveColorPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items!.map((item) {
            int index = items!.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  onItemSelected!(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
