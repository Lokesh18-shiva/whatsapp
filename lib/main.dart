import 'package:flutter/material.dart';
import './listforres.dart';
import './romodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'service.dart';

void main() {
  runApp(const MaterialApp(
    home: DataListPage(),
  ));
}

class DataListPage extends StatefulWidget {
  const DataListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DataListPageState createState() => _DataListPageState();
}

class _DataListPageState extends State<DataListPage> {
  ServiceResData serviceResData = ServiceResData();
  bool user = true;
  List C = [];
  @override
  void initState() {
    super.initState();

    serviceResData.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user = !user;
        });
      }),
      body: Observer(builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              pinned: true,
              floating: false,
              expandedHeight: 190.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://raw.githubusercontent.com/Lokesh18-shiva/flutter/main/Dish%20Image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Observer(builder: (context) {
                return ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: serviceResData.menuCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                            "${serviceResData.menuCategories[index].categoryName.toString()} (${serviceResData.menuCategories[index].menuItemsCount.toString()})",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        children: [
                          ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: serviceResData.dishtype.length,
                              itemBuilder: (BuildContext context, int index0) {
                                List L = [];

                                // print(serviceResData.menuItems[index].category
                                //     .toLowerCase());

                                if (serviceResData
                                        .menuCategories[index].categoryName
                                        .toLowerCase() ==
                                    'Appetizers'.toLowerCase()) {
                                  for (var i = 0;
                                      i < serviceResData.dishtype.length;
                                      i++) {
                                    if (serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4001'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
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
                                } else if (serviceResData
                                        .menuCategories[index].categoryName
                                        .toLowerCase() ==
                                    'Desserts'.toLowerCase()) {
                                  for (var i = 0;
                                      i < serviceResData.dishtype.length;
                                      i++) {
                                    if (serviceResData
                                            .dishtype[index0].dishTypeId
                                            .toLowerCase() ==
                                        '4027'.toLowerCase()) {
                                      L.clear();
                                      L.add(
                                        serviceResData
                                            .dishtype[index0].dishTypeName
                                            .toLowerCase(),
                                      );
                                    }
                                  }
                                } else if (serviceResData
                                        .menuCategories[index].categoryName
                                        .toLowerCase() ==
                                    'Meal for One'.toLowerCase()) {
                                  for (var i = 0;
                                      i < serviceResData.dishtype.length;
                                      i++) {
                                    if (serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4006'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4013'.toLowerCase()) {
                                      L.clear();
                                      L.add(
                                        serviceResData
                                            .dishtype[index0].dishTypeName
                                            .toLowerCase(),
                                      );
                                    }
                                  }
                                } else {
                                  for (var i = 0;
                                      i < serviceResData.dishtype.length;
                                      i++) {
                                    if (serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4006'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4013'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4001'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4000'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '4027'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '3006'.toLowerCase() ||
                                        serviceResData
                                                .dishtype[index0].dishTypeId
                                                .toLowerCase() ==
                                            '3005'.toLowerCase()) {
                                    } else {
                                      L.clear();
                                      L.add(
                                        serviceResData
                                            .dishtype[index0].dishTypeName
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
                                                  ee.toString().toUpperCase(),
                                                  style: const TextStyle(
                                                    color: Color(0xFF979BA2),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              children: [
                                                Builder(builder: (context) {
                                                  C.clear();

                                                  for (var i = 0;
                                                      i <
                                                          serviceResData
                                                              .menuItems.length;
                                                      i++) {
                                                    if (ee ==
                                                        serviceResData
                                                            .menuItems[i]
                                                            .dishType
                                                            .toLowerCase()) {
                                                      MenuItem menuItem =
                                                          serviceResData
                                                              .menuItems[i];

                                                      if (menuItem.foodType ==
                                                              1 &&
                                                          user == true) {
                                                        C.add(ListForRO(
                                                            img: serviceResData
                                                                .menuItems[i]
                                                                .plpImageUrl,
                                                            title:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .title,
                                                            totalCalories:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .totalCalories
                                                                    .value
                                                                    .toString(),
                                                            price:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .price
                                                                    .toString(),
                                                            offerDetails:
                                                                serviceResData
                                                                        .menuItems[
                                                                            i]
                                                                        .offerDetails ??
                                                                    ''));
                                                      } else if (menuItem
                                                                  .foodType ==
                                                              2 &&
                                                          user == false) {
                                                        C.add(ListForRO(
                                                            img: serviceResData
                                                                .menuItems[i]
                                                                .pdpImageUrl,
                                                            title:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .title,
                                                            totalCalories:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .totalCalories
                                                                    .value
                                                                    .toString(),
                                                            price:
                                                                serviceResData
                                                                    .menuItems[
                                                                        i]
                                                                    .price
                                                                    .toString(),
                                                            offerDetails:
                                                                serviceResData
                                                                        .menuItems[
                                                                            i]
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
                                                        (BuildContext context,
                                                            int index3) {
                                                      if (C.isEmpty) {
                                                        const Center(
                                                          child:
                                                              CircularProgressIndicator(),
                                                        );
                                                      } else {
                                                        try {
                                                          return C[index3];
                                                        } catch (e) {
                                                          RangeError(index3);
                                                        }
                                                      }
                                                      return null;
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
              }),
            ),
          ],
        );
      }),
    );
  }
}
