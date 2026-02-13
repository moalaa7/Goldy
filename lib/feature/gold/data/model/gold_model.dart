/// name : "Gold"
/// price : 4960.600098
/// symbol : "XAU"
/// updatedAt : "2026-02-03T17:22:10Z"
/// updatedAtReadable : "a few seconds ago"

class SilverModel {
  SilverModel({
      this.name, 
      this.price, 
      this.symbol, 
      this.updatedAt, 
      this.updatedAtReadable,});

  SilverModel.fromJson(dynamic json) {
    name = json['name'];
    price = json['price'];
    symbol = json['symbol'];
    updatedAt = json['updatedAt'];
    updatedAtReadable = json['updatedAtReadable'];
  }
  String? name;
  double? price;
  String? symbol;
  String? updatedAt;
  String? updatedAtReadable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['price'] = price;
    map['symbol'] = symbol;
    map['updatedAt'] = updatedAt;
    map['updatedAtReadable'] = updatedAtReadable;
    return map;
  }

}