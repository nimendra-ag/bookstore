import 'package:bookstore/models/book.dart';

class Category {
  String? categoryID;
  String? categoryName;
  List<Book>? books = [];

  Category({
    required this.categoryID,
    required this.categoryName,
  });
}
