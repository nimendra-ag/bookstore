import 'package:bookstore/models/book.dart';

class UserProfile {
  String? uid;
  String? name;
  String? pfpURL;
  String? nic;
  String? country;
  String? district;
  String? homeTown;
  List<Book>? bookList;
  List<Book>? borrowedBooks;

  UserProfile({
    required this.uid,
    required this.name,
    required this.pfpURL,
    required this.nic,
    required this.country,
    required this.district,
    required this.homeTown,
    required this.bookList,
    required this.borrowedBooks
  });

  UserProfile.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    pfpURL = json['pfpURL'];
    nic = json['nic'];
    country = json['country'];
    district = json['district'];
    homeTown = json['homeTown'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['pfpURL'] = pfpURL;
    data['uid'] = uid;
    data['nic'] = nic;
    data['country'] = country;
    data['district'] = district;
    data['homeTown'] = homeTown;
    return data;
  }
}
