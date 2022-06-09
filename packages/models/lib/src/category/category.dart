import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

enum Category {
  empty,
  delivery,
  labour,
  assorted,
  other,
}

extension CategoryX on Category {
  String get name => {
        Category.empty: 'empty',
        Category.delivery: 'Delivery',
        Category.labour: 'Labour',
        Category.assorted: 'Assorted',
        Category.other: 'Other',
      }[this]!;
  String get description => {
        Category.empty: 'this should never be seen',
        Category.delivery: 'Pick Up & Deliver Goods Around',
        Category.labour: 'General Labour Work',
        Category.assorted: 'Assorted work which falls into multiple categories',
        Category.other: 'Work which falls in none of the above cateories',
      }[this]!;
}
