// ignore_for_file: constant_identifier_names

import 'dart:convert';

class Res {
  final int statusCode;
  final String message;
  final Result result;
  final bool isEncrypted;

  Res({
    required this.statusCode,
    required this.message,
    required this.result,
    required this.isEncrypted,
  });

  factory Res.fromRawJson(String str) => Res.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Res.fromJson(Map<String, dynamic> json) => Res(
        statusCode: json["statusCode"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
        isEncrypted: json["is_encrypted"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "result": result.toJson(),
        "is_encrypted": isEncrypted,
      };
}

class Result {
  final RestaurantDetails restaurantDetails;
  final List<MenuCategory> menuCategories;
  final List<Filter> filters;

  Result({
    required this.restaurantDetails,
    required this.menuCategories,
    required this.filters,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        restaurantDetails:
            RestaurantDetails.fromJson(json["restaurant_details"]),
        menuCategories: List<MenuCategory>.from(
            json["menu_categories"].map((x) => MenuCategory.fromJson(x))),
        filters:
            List<Filter>.from(json["filters"].map((x) => Filter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "restaurant_details": restaurantDetails.toJson(),
        "menu_categories":
            List<dynamic>.from(menuCategories.map((x) => x.toJson())),
        "filters": List<dynamic>.from(filters.map((x) => x.toJson())),
      };
}

class Filter {
  final String name;
  final String type;
  final String key;
  final int value;
  final String imageUrl;

  Filter({
    required this.name,
    required this.type,
    required this.key,
    required this.value,
    required this.imageUrl,
  });

  factory Filter.fromRawJson(String str) => Filter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        name: json["name"],
        type: json["type"],
        key: json["key"],
        value: json["value"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "key": key,
        "value": value,
        "image_url": imageUrl,
      };
}

class MenuCategory {
  final String categoryName; 
  final String categoryId;
  final int menuItemsCount;
  final int order;
  final List<MenuCategoryDishType> dishTypes;

  MenuCategory({
    required this.categoryName,
    required this.categoryId,
    required this.menuItemsCount,
    required this.order,
    required this.dishTypes,
  });

  factory MenuCategory.fromRawJson(String str) =>
      MenuCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuCategory.fromJson(Map<String, dynamic> json) => MenuCategory(
        categoryName: json["category_name"],
        categoryId: json["category_id"],
        menuItemsCount: json["menu_items_count"],
        order: json["order"],
        dishTypes: List<MenuCategoryDishType>.from(
            json["dish_types"].map((x) => MenuCategoryDishType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category_name": categoryNameEnumValues.reverse[categoryName],
        "category_id": categoryId,
        "menu_items_count": menuItemsCount,
        "order": order,
        "dish_types": List<dynamic>.from(dishTypes.map((x) => x.toJson())),
      };
}

enum CategoryNameEnum {
  APPETIZERS,
  DESSERTS,
  GRILLS,
  MAIN_COURSE,
  MEAL_FOR_ONE
}

final categoryNameEnumValues = EnumValues({
  "Appetizers": CategoryNameEnum.APPETIZERS,
  "Desserts": CategoryNameEnum.DESSERTS,
  "Grills": CategoryNameEnum.GRILLS,
  "Main Course": CategoryNameEnum.MAIN_COURSE,
  "Meal for One": CategoryNameEnum.MEAL_FOR_ONE
});

class MenuCategoryDishType {
  final String dishTypeName;
  final String dishTypeId;
  final int menuItemsCount;
  final int order;
  final List<MenuItem> menuItems;

  MenuCategoryDishType({
    required this.dishTypeName,
    required this.dishTypeId,
    required this.menuItemsCount,
    required this.order,
    required this.menuItems,
  });

  factory MenuCategoryDishType.fromRawJson(String str) =>
      MenuCategoryDishType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuCategoryDishType.fromJson(Map<String, dynamic> json) =>
      MenuCategoryDishType(
        dishTypeName: json["dish_type_name"],
        dishTypeId: json["dish_type_id"],
        menuItemsCount: json["menu_items_count"],
        order: json["order"],
        menuItems: List<MenuItem>.from(
            json["menu_items"].map((x) => MenuItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "dish_type_name": dishTypeName,
        "dish_type_id": dishTypeId,
        "menu_items_count": menuItemsCount,
        "order": order,
        "menu_items": List<dynamic>.from(menuItems.map((x) => x.toJson())),
      };
}

class MenuItem {
  final String id;
  final String itemRefId;
  final String restaurantPosId;
  final String restaurantId;
  final String hotelId;
  final HotelCode hotelCode;
  final String title;
  final RestaurantNameEnum restaurantName;
  final int foodType;
  final String dishType;
  final String description;
  final bool recommended;
  final List<Allergen> allergens;
  final List<String> condiments;
  final int spiceLevel;
  final bool chefSpecial;
  final bool vegan;
  final bool kosher;
  final bool glutenFree;
  final String portion;
  final String ingredients;
  final int price;
  final bool jainDish;
  final bool halalDish;
  final bool lunch;
  final bool breakfast;
  final bool dinner;
  final int heatIndex;
  final String category;
  final Tax tax;
  final String pdpImageUrl;
  final String plpImageUrl;
  final int dishTypeSequence;
  final int available;
  final List<dynamic> festivalIds;
  final bool newItem;
  final bool isQminRed;
  final List<CuisineElement> cuisines;
  final List<Classification> classifications;
  final List<CategoryElement> categories;
  final List<MenuItemDishType> dishTypes;
  final dynamic offerDetails;
  final List<CalorificValue> calorificValue;
  final TotalCalories totalCalories;
  final List<String> curationId;

  MenuItem({
    required this.id,
    required this.itemRefId,
    required this.restaurantPosId,
    required this.restaurantId,
    required this.hotelId,
    required this.hotelCode,
    required this.title,
    required this.restaurantName,
    required this.foodType,
    required this.dishType,
    required this.description,
    required this.recommended,
    required this.allergens,
    required this.condiments,
    required this.spiceLevel,
    required this.chefSpecial,
    required this.vegan,
    required this.kosher,
    required this.glutenFree,
    required this.portion,
    required this.ingredients,
    required this.price,
    required this.jainDish,
    required this.halalDish,
    required this.lunch,
    required this.breakfast,
    required this.dinner,
    required this.heatIndex,
    required this.category,
    required this.tax,
    required this.pdpImageUrl,
    required this.plpImageUrl,
    required this.dishTypeSequence,
    required this.available,
    required this.festivalIds,
    required this.newItem,
    required this.isQminRed,
    required this.cuisines,
    required this.classifications,
    required this.categories,
    required this.dishTypes,
    required this.offerDetails,
    required this.calorificValue,
    required this.totalCalories,
    required this.curationId,
  });

  factory MenuItem.fromRawJson(String str) =>
      MenuItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        id: json["id"],
        itemRefId: json["item_ref_id"],
        restaurantPosId: json["restaurant_pos_id"],
        restaurantId: json["restaurant_id"],
        hotelId: json["hotel_id"],
        hotelCode: hotelCodeValues.map[json["hotel_code"]]!,
        title: json["title"],
        restaurantName: restaurantNameEnumValues.map[json["restaurant_name"]]!,
        foodType: json["food_type"],
        dishType: json["dish_type"],
        description: json["description"],
        recommended: json["recommended"],
        allergens: List<Allergen>.from(
            json["allergens"].map((x) => allergenValues.map[x]!)),
        condiments: List<String>.from(json["condiments"].map((x) => x)),
        spiceLevel: json["spice_level"],
        chefSpecial: json["chef_special"],
        vegan: json["vegan"],
        kosher: json["kosher"],
        glutenFree: json["gluten_free"],
        portion: json["portion"],
        ingredients: json["ingredients"],
        price: json["price"],
        jainDish: json["jain_dish"],
        halalDish: json["halal_dish"],
        lunch: json["lunch"],
        breakfast: json["breakfast"],
        dinner: json["dinner"],
        heatIndex: json["heat_index"],
        category:json["category"],
        tax: Tax.fromJson(json["tax"]),
        pdpImageUrl: json["pdp_image_url"],
        plpImageUrl: json["plp_image_url"],
        dishTypeSequence: json["dish_type_sequence"],
        available: json["available"],
        festivalIds: List<dynamic>.from(json["festival_ids"].map((x) => x)),
        newItem: json["new_item"],
        isQminRed: json["is_qmin_red"],
        cuisines: List<CuisineElement>.from(
            json["cuisines"].map((x) => CuisineElement.fromJson(x))),
        classifications: List<Classification>.from(
            json["classifications"].map((x) => Classification.fromJson(x))),
        categories: List<CategoryElement>.from(
            json["categories"].map((x) => CategoryElement.fromJson(x))),
        dishTypes: List<MenuItemDishType>.from(
            json["dish_types"].map((x) => MenuItemDishType.fromJson(x))),
        offerDetails: json["offer_details"],
        calorificValue: List<CalorificValue>.from(
            json["calorific_value"].map((x) => CalorificValue.fromJson(x))),
        totalCalories: TotalCalories.fromJson(json["total_calories"]),
curationId: json["curation_id"] != null 
    ? List<String>.from(json["curation_id"].map((x) => x))
    : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "item_ref_id": itemRefId,
        "restaurant_pos_id": restaurantPosId,
        "restaurant_id": restaurantId,
        "hotel_id": hotelId,
        "hotel_code": hotelCodeValues.reverse[hotelCode],
        "title": title,
        "restaurant_name": restaurantNameEnumValues.reverse[restaurantName],
        "food_type": foodType,
        "dish_type": dishType,
        "description": description,
        "recommended": recommended,
        "allergens":
            List<dynamic>.from(allergens.map((x) => allergenValues.reverse[x])),
        "condiments": List<dynamic>.from(condiments.map((x) => x)),
        "spice_level": spiceLevel,
        "chef_special": chefSpecial,
        "vegan": vegan,
        "kosher": kosher,
        "gluten_free": glutenFree,
        "portion": portion,
        "ingredients": ingredients,
        "price": price,
        "jain_dish": jainDish,
        "halal_dish": halalDish,
        "lunch": lunch,
        "breakfast": breakfast,
        "dinner": dinner,
        "heat_index": heatIndex,
        "category": categoryNameEnumValues.reverse[category],
        "tax": tax.toJson(),
        "pdp_image_url": pdpImageUrl,
        "plp_image_url": plpImageUrl,
        "dish_type_sequence": dishTypeSequence,
        "available": available,
        "festival_ids": List<dynamic>.from(festivalIds.map((x) => x)),
        "new_item": newItem,
        "is_qmin_red": isQminRed,
        "cuisines": List<dynamic>.from(cuisines.map((x) => x.toJson())),
        "classifications":
            List<dynamic>.from(classifications.map((x) => x.toJson())),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "dish_types": List<dynamic>.from(dishTypes.map((x) => x.toJson())),
        "offer_details": offerDetails,
        "calorific_value":
            List<dynamic>.from(calorificValue.map((x) => x.toJson())),
        "total_calories": totalCalories.toJson(),
        "curation_id": List<dynamic>.from(curationId.map((x) => x)),
      };
}

enum Allergen {
  CELERY,
  CRUSTACEAN,
  EGGS,
  EMPTY,
  FISH,
  GLUTEN,
  MILK,
  MUSTARD,
  SESAME_SEED,
  SOYA_BEAN,
  SULPHUR_DIOXIDE,
  TREENUTS
}

final allergenValues = EnumValues({
  "Celery": Allergen.CELERY,
  "Crustacean": Allergen.CRUSTACEAN,
  "Eggs": Allergen.EGGS,
  "": Allergen.EMPTY,
  "Fish": Allergen.FISH,
  "Gluten": Allergen.GLUTEN,
  "Milk": Allergen.MILK,
  "Mustard": Allergen.MUSTARD,
  "Sesame Seed": Allergen.SESAME_SEED,
  "Soya Bean": Allergen.SOYA_BEAN,
  "Sulphur Dioxide": Allergen.SULPHUR_DIOXIDE,
  "Treenuts": Allergen.TREENUTS
});

class CalorificValue {
  final Property property;
  final CalorificValueUnit unit;
  final double value;

  CalorificValue({
    required this.property,
    required this.unit,
    required this.value,
  });

  factory CalorificValue.fromRawJson(String str) =>
      CalorificValue.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CalorificValue.fromJson(Map<String, dynamic> json) => CalorificValue(
        property: propertyValues.map[json["property"]]!,
        unit: calorificValueUnitValues.map[json["unit"]]!,
        value: json["value"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "property": propertyValues.reverse[property],
        "unit": calorificValueUnitValues.reverse[unit],
        "value": value,
      };
}

enum Property { CARBS, FAT, PROTEIN }

final propertyValues = EnumValues({
  "Carbs": Property.CARBS,
  "Fat": Property.FAT,
  "Protein": Property.PROTEIN
});

enum CalorificValueUnit { G }

final calorificValueUnitValues = EnumValues({"g": CalorificValueUnit.G});

class CategoryElement {
  final String categoryId;
  final CategoryNameEnum categoryName;
  final String classificationId;
  final ClassificationName classificationName;
  final String cuisineId;
  final CuisinesEnum cuisineName;

  CategoryElement({
    required this.categoryId,
    required this.categoryName,
    required this.classificationId,
    required this.classificationName,
    required this.cuisineId,
    required this.cuisineName,
  });

  factory CategoryElement.fromRawJson(String str) =>
      CategoryElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      CategoryElement(
        categoryId: json["category_id"],
        categoryName: categoryNameEnumValues.map[json["category_name"]]!,
        classificationId: json["classification_id"],
        classificationName:
            classificationNameValues.map[json["classification_name"]]!,
        cuisineId: json["cuisine_id"],
        cuisineName: cuisinesEnumValues.map[json["cuisine_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryNameEnumValues.reverse[categoryName],
        "classification_id": classificationId,
        "classification_name":
            classificationNameValues.reverse[classificationName],
        "cuisine_id": cuisineId,
        "cuisine_name": cuisinesEnumValues.reverse[cuisineName],
      };
}

enum ClassificationName { LA_CARTE }

final classificationNameValues =
    EnumValues({"À la carte": ClassificationName.LA_CARTE});

enum CuisinesEnum {
  CHINESE,
  ITALIAN,
  MULTICUISINE,
  NORTH_INDIAN,
  PARSI,
  WESTERN
}

final cuisinesEnumValues = EnumValues({
  "Chinese": CuisinesEnum.CHINESE,
  "Italian": CuisinesEnum.ITALIAN,
  "Multicuisine": CuisinesEnum.MULTICUISINE,
  "North Indian": CuisinesEnum.NORTH_INDIAN,
  "Parsi": CuisinesEnum.PARSI,
  "Western": CuisinesEnum.WESTERN
});

class Classification {
  final String classificationId;
  final ClassificationName classificationName;
  final ClassificationQueryAttribute classificationQueryAttribute;
  final String cuisineId;
  final CuisinesEnum cuisineName;

  Classification({
    required this.classificationId,
    required this.classificationName,
    required this.classificationQueryAttribute,
    required this.cuisineId,
    required this.cuisineName,
  });

  factory Classification.fromRawJson(String str) =>
      Classification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
        classificationId: json["classification_id"],
        classificationName:
            classificationNameValues.map[json["classification_name"]]!,
        classificationQueryAttribute: classificationQueryAttributeValues
            .map[json["classification_query_attribute"]]!,
        cuisineId: json["cuisine_id"],
        cuisineName: cuisinesEnumValues.map[json["cuisine_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "classification_id": classificationId,
        "classification_name":
            classificationNameValues.reverse[classificationName],
        "classification_query_attribute": classificationQueryAttributeValues
            .reverse[classificationQueryAttribute],
        "cuisine_id": cuisineId,
        "cuisine_name": cuisinesEnumValues.reverse[cuisineName],
      };
}

enum ClassificationQueryAttribute { QMIN_ALA_CARTE }

final classificationQueryAttributeValues =
    EnumValues({"qmin_ala_carte": ClassificationQueryAttribute.QMIN_ALA_CARTE});

class CuisineElement {
  final String cuisineId;
  final CuisinesEnum cuisineName;

  CuisineElement({
    required this.cuisineId,
    required this.cuisineName,
  });

  factory CuisineElement.fromRawJson(String str) =>
      CuisineElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CuisineElement.fromJson(Map<String, dynamic> json) => CuisineElement(
        cuisineId: json["cuisine_id"],
        cuisineName: cuisinesEnumValues.map[json["cuisine_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "cuisine_id": cuisineId,
        "cuisine_name": cuisinesEnumValues.reverse[cuisineName],
      };
}

class MenuItemDishType {
  final String dishTypeId;
  final String dishTypeName;
  final String categoryId;
  final CategoryNameEnum categoryName;
  final String classificationId;
  final ClassificationName classificationName;
  final String cuisineId;
  final CuisinesEnum cuisineName;

  MenuItemDishType({
    required this.dishTypeId,
    required this.dishTypeName,
    required this.categoryId,
    required this.categoryName,
    required this.classificationId,
    required this.classificationName,
    required this.cuisineId,
    required this.cuisineName,
  });

  factory MenuItemDishType.fromRawJson(String str) =>
      MenuItemDishType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuItemDishType.fromJson(Map<String, dynamic> json) =>
      MenuItemDishType(
        dishTypeId: json["dish_type_id"],
        dishTypeName: json["dish_type_name"],
        categoryId: json["category_id"],
        categoryName: categoryNameEnumValues.map[json["category_name"]]!,
        classificationId: json["classification_id"],
        classificationName:
            classificationNameValues.map[json["classification_name"]]!,
        cuisineId: json["cuisine_id"],
        cuisineName: cuisinesEnumValues.map[json["cuisine_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "dish_type_id": dishTypeId,
        "dish_type_name": dishTypeName,
        "category_id": categoryId,
        "category_name": categoryNameEnumValues.reverse[categoryName],
        "classification_id": classificationId,
        "classification_name":
            classificationNameValues.reverse[classificationName],
        "cuisine_id": cuisineId,
        "cuisine_name": cuisinesEnumValues.reverse[cuisineName],
      };
}

enum HotelCode { TLBO }

final hotelCodeValues = EnumValues({"TLBO": HotelCode.TLBO});

enum RestaurantNameEnum { VISTA }

final restaurantNameEnumValues =
    EnumValues({"Vista": RestaurantNameEnum.VISTA});

class Tax {
  final double totalAmount;
  final CurrencyCode currencyCode;
  final List<Component> components;

  Tax({
    required this.totalAmount,
    required this.currencyCode,
    required this.components,
  });

  factory Tax.fromRawJson(String str) => Tax.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        totalAmount: json["total_amount"]?.toDouble(),
        currencyCode: currencyCodeValues.map[json["currency_code"]]!,
        components: List<Component>.from(
            json["components"].map((x) => Component.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_amount": totalAmount,
        "currency_code": currencyCodeValues.reverse[currencyCode],
        "components": List<dynamic>.from(components.map((x) => x.toJson())),
      };
}

class Component {
  final ComponentName name;
  final Percentage percentage;
  final double amount;

  Component({
    required this.name,
    required this.percentage,
    required this.amount,
  });

  factory Component.fromRawJson(String str) =>
      Component.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Component.fromJson(Map<String, dynamic> json) => Component(
        name: componentNameValues.map[json["name"]]!,
        percentage: percentageValues.map[json["percentage"]]!,
        amount: json["amount"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": componentNameValues.reverse[name],
        "percentage": percentageValues.reverse[percentage],
        "amount": amount,
      };
}

enum ComponentName { CGST, SGST }

final componentNameValues =
    EnumValues({"CGST": ComponentName.CGST, "SGST": ComponentName.SGST});

enum Percentage { THE_9 }

final percentageValues = EnumValues({"9 %": Percentage.THE_9});

enum CurrencyCode { INR }

final currencyCodeValues = EnumValues({"INR": CurrencyCode.INR});

class TotalCalories {
  final TotalCaloriesUnit unit;
  final double value;

  TotalCalories({
    required this.unit,
    required this.value,
  });

  factory TotalCalories.fromRawJson(String str) =>
      TotalCalories.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TotalCalories.fromJson(Map<String, dynamic> json) => TotalCalories(
        unit:
            totalCaloriesUnitValues.map[json["unit"]] ?? TotalCaloriesUnit.KCAL,
        value: json["value"] != null ? (json["value"] as num).toDouble() : 0.0,
      );

  Map<String, dynamic> toJson() => {
        "unit": totalCaloriesUnitValues.reverse[unit],
        "value": value,
      };
}

enum TotalCaloriesUnit { KCAL }

final totalCaloriesUnitValues = EnumValues({"kcal": TotalCaloriesUnit.KCAL});

class RestaurantDetails {
  final String id;
  final String name;
  final String hotelId;
  final String hotelName;
  final HotelCode hotelCode;
  final String subId;
  final CuisinesEnum cuisines;
  final int costForTwo;
  final String restaurantDetailsImgUrl;
  final String menuPageHeaderImgUrl;
  final String homePageCardImgUrl;
  final String description;
  final String type;
  final bool isQminRed;
  final bool isQminRedServed;
  final bool available;
  final String hotelAlias;
  final bool instantOrder;
  final dynamic offerDetails;
  final int responseTemplateId;
  final bool isAlsoOrderFromVisible;

  RestaurantDetails({
    required this.id,
    required this.name,
    required this.hotelId,
    required this.hotelName,
    required this.hotelCode,
    required this.subId,
    required this.cuisines,
    required this.costForTwo,
    required this.restaurantDetailsImgUrl,
    required this.menuPageHeaderImgUrl,
    required this.homePageCardImgUrl,
    required this.description,
    required this.type,
    required this.isQminRed,
    required this.isQminRedServed,
    required this.available,
    required this.hotelAlias,
    required this.instantOrder,
    required this.offerDetails,
    required this.responseTemplateId,
    required this.isAlsoOrderFromVisible,
  });

  factory RestaurantDetails.fromRawJson(String str) =>
      RestaurantDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RestaurantDetails.fromJson(Map<String, dynamic> json) =>
      RestaurantDetails(
        id: json["id"],
        name: json["name"],
        hotelId: json["hotel_id"],
        hotelName: json["hotel_name"],
        hotelCode: hotelCodeValues.map[json["hotel_code"]]!,
        subId: json["sub_id"],
        cuisines: cuisinesEnumValues.map[json["cuisines"]]!,
        costForTwo: json["cost_for_two"],
        restaurantDetailsImgUrl: json["restaurant_details_img_url"],
        menuPageHeaderImgUrl: json["menu_page_header_img_url"],
        homePageCardImgUrl: json["home_page_card_img_url"],
        description: json["description"],
        type: json["type"],
        isQminRed: json["is_qmin_red"],
        isQminRedServed: json["is_qmin_red_served"],
        available: json["available"],
        hotelAlias: json["hotel_alias"],
        instantOrder: json["instant_order"],
        offerDetails: json["offer_details"],
        responseTemplateId: json["response_template_id"],
        isAlsoOrderFromVisible: json["is_also_order_from_visible"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "hotel_id": hotelId,
        "hotel_name": hotelName,
        "hotel_code": hotelCodeValues.reverse[hotelCode],
        "sub_id": subId,
        "cuisines": cuisinesEnumValues.reverse[cuisines],
        "cost_for_two": costForTwo,
        "restaurant_details_img_url": restaurantDetailsImgUrl,
        "menu_page_header_img_url": menuPageHeaderImgUrl,
        "home_page_card_img_url": homePageCardImgUrl,
        "description": description,
        "type": type,
        "is_qmin_red": isQminRed,
        "is_qmin_red_served": isQminRedServed,
        "available": available,
        "hotel_alias": hotelAlias,
        "instant_order": instantOrder,
        "offer_details": offerDetails,
        "response_template_id": responseTemplateId,
        "is_also_order_from_visible": isAlsoOrderFromVisible,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
