part of 'entities.dart';

class BookEntity extends Equatable {
  const BookEntity({
    this.title,
    this.subtitle,
    this.isbn13,
    this.price,
    this.image,
    this.url,
    this.rating,
    this.authors,
    this.publisher,
    this.language,
    this.desc,
    this.pages,
    this.year,
  });

  final String? title;
  final String? subtitle;
  final String? isbn13;
  final String? price;
  final String? image;
  final String? url;
  final String? rating;
  final String? authors;
  final String? publisher;
  final String? language;
  final String? pages;
  final String? year;

  final String? desc;

  bool get isNull => isbn13 == null || isbn13 == '';

  factory BookEntity.empty() => const BookEntity();

  @override
  List<Object?> get props => [
        title,
        subtitle,
        isbn13,
        price,
        image,
        url,
        rating,
        authors,
        publisher,
        language,
        publisher,
        language,
        pages,
        year,
        desc,
      ];
}
