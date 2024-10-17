import 'package:bookstore/models/category.dart';
import 'package:bookstore/models/user_profile.dart';

class Book {
  String? bookID;
  String? bookName;
  String? author;
  String? price;
  UserProfile? owner;
  bool? availability = true;
  List<UserProfile> borrowers = [];
  Category? category;

  Book({
    required this.bookID,
    required this.bookName,
    required this.author,
    required this.price,
    required this.owner,
  });
}
