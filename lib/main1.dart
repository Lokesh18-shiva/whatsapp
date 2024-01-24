// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import './listforres.dart';
import './romodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'service.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  Myapp({super.key});
  ServiceResData serviceResData = ServiceResData();
  List C = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.abc_outlined),
              onPressed: () {
                serviceResData.userq();
                print(serviceResData.user);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: FutureBuilder(
                future: serviceResData.fetchData(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    List<MenuItem> menuItems = snap.data![0];
                    List<MenuCategory> menuCategories = snap.data![1];
                    List<MenuCategoryDishType> dishtype = snap.data![2];
                    return Observer(builder: (context) {
                      return ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: serviceResData.menuCategories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ExpansionTile(
                              initiallyExpanded: true,
                              title: Text(
                                  "${menuCategories[index].categoryName.toString()} (${serviceResData.menuCategories[index].menuItemsCount.toString()})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              children: [
                                ListView.builder(
                                    primary: false,
                                    shrinkWrap: true,
                                    itemCount: serviceResData.dishtype.length,
                                    itemBuilder:
                                        (BuildContext context, int index0) {
                                      List L = [];

                                      print(serviceResData
                                          .menuItems[index].category
                                          .toLowerCase());

                                      if (serviceResData.menuCategories[index]
                                              .categoryName
                                              .toLowerCase() ==
                                          'Appetizers'.toLowerCase()) {
                                        for (var i = 0;
                                            i < serviceResData.dishtype.length;
                                            i++) {
                                          if (serviceResData.dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4001'.toLowerCase() ||
                                              serviceResData.dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4000'.toLowerCase()) {
                                            L.clear();
                                            L.add(
                                              serviceResData
                                                  .dishtype[index0].dishTypeName
                                                  .toLowerCase(),
                                            );
                                          }
                                        }
                                      } else if (menuCategories[index]
                                              .categoryName
                                              .toLowerCase() ==
                                          'Desserts'.toLowerCase()) {
                                        for (var i = 0;
                                            i < dishtype.length;
                                            i++) {
                                          if (dishtype[index0]
                                                  .dishTypeId
                                                  .toLowerCase() ==
                                              '4027'.toLowerCase()) {
                                            L.clear();
                                            L.add(
                                              dishtype[index0]
                                                  .dishTypeName
                                                  .toLowerCase(),
                                            );
                                          }
                                        }
                                      } else if (menuCategories[index]
                                              .categoryName
                                              .toLowerCase() ==
                                          'Meal for One'.toLowerCase()) {
                                        for (var i = 0;
                                            i < dishtype.length;
                                            i++) {
                                          if (dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4006'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4013'.toLowerCase()) {
                                            L.clear();
                                            L.add(
                                              dishtype[index0]
                                                  .dishTypeName
                                                  .toLowerCase(),
                                            );
                                          }
                                        }
                                      } else {
                                        for (var i = 0;
                                            i < dishtype.length;
                                            i++) {
                                          if (dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4006'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4013'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4001'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4000'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '4027'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '3006'.toLowerCase() ||
                                              dishtype[index0]
                                                      .dishTypeId
                                                      .toLowerCase() ==
                                                  '3005'.toLowerCase()) {
                                          } else {
                                            L.clear();
                                            L.add(
                                              dishtype[index0]
                                                  .dishTypeName
                                                  .toLowerCase(),
                                            );
                                          }
                                        }
                                      }

                                      return Column(
                                          children: L
                                              .map((ee) => ExpansionTile(
                                                    initiallyExpanded: true,
                                                    title: Text(
                                                        ee
                                                            .toString()
                                                            .toUpperCase(),
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xFF979BA2),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    children: [
                                                      Builder(
                                                          builder: (context) {
                                                        C.clear();

                                                        for (var i = 0;
                                                            i <
                                                                menuItems
                                                                    .length;
                                                            i++) {
                                                          if (ee ==
                                                              menuItems[i]
                                                                  .dishType
                                                                  .toLowerCase()) {
                                                            MenuItem menuItem =
                                                                menuItems[i];

                                                            if (menuItem.foodType ==
                                                                    1 &&
                                                                serviceResData
                                                                        .user ==
                                                                    true) {
                                                              C.add(ListForRO(
                                                                  img: menuItems[
                                                                          i]
                                                                      .plpImageUrl,
                                                                  title:
                                                                      menuItems[
                                                                              i]
                                                                          .title,
                                                                  totalCalories:
                                                                      menuItems[
                                                                              i]
                                                                          .totalCalories
                                                                          .value
                                                                          .toString(),
                                                                  price: menuItems[
                                                                          i]
                                                                      .price
                                                                      .toString(),
                                                                  offerDetails:
                                                                      menuItems[i]
                                                                              .offerDetails ??
                                                                          ''));
                                                            } else if (menuItem
                                                                        .foodType ==
                                                                    2 &&
                                                                serviceResData
                                                                        .user ==
                                                                    false) {
                                                              C.add(ListForRO(
                                                                  img: menuItems[
                                                                          i]
                                                                      .pdpImageUrl,
                                                                  title:
                                                                      menuItems[
                                                                              i]
                                                                          .title,
                                                                  totalCalories:
                                                                      menuItems[
                                                                              i]
                                                                          .totalCalories
                                                                          .value
                                                                          .toString(),
                                                                  price: menuItems[
                                                                          i]
                                                                      .price
                                                                      .toString(),
                                                                  offerDetails:
                                                                      menuItems[i]
                                                                              .offerDetails ??
                                                                          ''));
                                                            }
                                                            // else {
                                                            //   C.add(ListForRO(
                                                            //       img: menuItems[i]
                                                            //           .pdpImageUrl,
                                                            //       title:
                                                            //           menuItems[i].title,
                                                            //       totalCalories:
                                                            //           menuItems[i]
                                                            //               .totalCalories
                                                            //               .value
                                                            //               .toString(),
                                                            //       price: menuItems[i]
                                                            //           .price
                                                            //           .toString(),
                                                            //       offerDetails: menuItems[
                                                            //                   i]
                                                            //               .offerDetails ??
                                                            //           ''));
                                                            // }
                                                          }
                                                        }

                                                        return ListView.builder(
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          itemCount: C.length,
                                                          itemBuilder:
                                                              (BuildContext
                                                                      context,
                                                                  int index3) {
                                                            if (C.isEmpty) {
                                                              const Center(
                                                                child:
                                                                    CircularProgressIndicator(),
                                                              );
                                                            } else {
                                                              try {
                                                                return C[
                                                                    index3];
                                                              } catch (e) {
                                                                RangeError(
                                                                    index3);
                                                              }
                                                            }
                                                          },
                                                        );
                                                      })
                                                    ],
                                                  ))
                                              .toList());
                                    })
                              ],
                            );
                          });
                    });
                  }
                }),
          ),
        ],
      ),
    );
  }
}
