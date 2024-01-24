// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ServiceResData on RestaurantService, Store {
  late final _$userAtom =
      Atom(name: 'RestaurantService.user', context: context);

  @override
  bool get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(bool value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$appertizerAtom =
      Atom(name: 'RestaurantService.appertizer', context: context);

  @override
  List<dynamic> get appertizer {
    _$appertizerAtom.reportRead();
    return super.appertizer;
  }

  @override
  set appertizer(List<dynamic> value) {
    _$appertizerAtom.reportWrite(value, super.appertizer, () {
      super.appertizer = value;
    });
  }

  late final _$menuItemsAtom =
      Atom(name: 'RestaurantService.menuItems', context: context);

  @override
  List<MenuItem> get menuItems {
    _$menuItemsAtom.reportRead();
    return super.menuItems;
  }

  @override
  set menuItems(List<MenuItem> value) {
    _$menuItemsAtom.reportWrite(value, super.menuItems, () {
      super.menuItems = value;
    });
  }

  late final _$menuCategoriesAtom =
      Atom(name: 'RestaurantService.menuCategories', context: context);

  @override
  List<MenuCategory> get menuCategories {
    _$menuCategoriesAtom.reportRead();
    return super.menuCategories;
  }

  @override
  set menuCategories(List<MenuCategory> value) {
    _$menuCategoriesAtom.reportWrite(value, super.menuCategories, () {
      super.menuCategories = value;
    });
  }

  late final _$dishtypeAtom =
      Atom(name: 'RestaurantService.dishtype', context: context);

  @override
  List<MenuCategoryDishType> get dishtype {
    _$dishtypeAtom.reportRead();
    return super.dishtype;
  }

  @override
  set dishtype(List<MenuCategoryDishType> value) {
    _$dishtypeAtom.reportWrite(value, super.dishtype, () {
      super.dishtype = value;
    });
  }

  late final _$RestaurantServiceActionController =
      ActionController(name: 'RestaurantService', context: context);

  @override
  void userq() {
    final _$actionInfo = _$RestaurantServiceActionController.startAction(
        name: 'RestaurantService.userq');
    try {
      return super.userq();
    } finally {
      _$RestaurantServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
appertizer: ${appertizer},
menuItems: ${menuItems},
menuCategories: ${menuCategories},
dishtype: ${dishtype}
    ''';
  }
}
