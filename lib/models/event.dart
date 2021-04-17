import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class Event {
  String name;
  String date;
  dynamic price;
  String currency;
  String get timeAgo => _getTimeAgo();
  String get priceWithCurrency => _getPriceWithCurrency();

  String _getTimeAgo() {
    return Jiffy(this.date).fromNow();
  }

  String _getPriceWithCurrency() {
    final format = NumberFormat.simpleCurrency(name: currency);
    return format.currencySymbol + price.toString();
  }

  Event({this.name, this.date, this.price, this.currency});

  Event.fromJson(dynamic json) {
    name = json["name"];
    date = json["date"];
    price = json["price"];
    currency = json["currency"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["date"] = date;
    map["price"] = price;
    map["currency"] = currency;
    return map;
  }
}
