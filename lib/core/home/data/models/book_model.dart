part of 'models.dart';

class BookModel extends BookEntity {
  const BookModel({
    super.image,
    super.isbn13,
    super.price,
    super.subtitle,
    super.title,
    super.url,
    super.rating,
    super.authors,
    super.publisher,
    super.language,
    super.pages,
    super.desc,
    super.year,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        isbn13: json.getString('isbn13'),
        price: json.getString('price'),
        title: json.getString('title'),
        subtitle: json.getString('subtitle'),
        image: json.getString('image'),
        url: json.getString('url'),
        rating: json.getString('rating'),
        authors: json.getString('authors'),
        publisher: json.getString('publisher'),
        pages: json.getString('pages'),
        desc: json.getString('desc'),
        year: json.getString('year'),
      );
}

extension BookMapper on BookModel {
  BookEntity toEntitie() {
    return BookEntity(
      image: image,
      isbn13: isbn13,
      url: url,
      title: title,
      subtitle: subtitle,
      price: price,
      rating: rating,
      authors: authors,
      publisher: publisher,
      pages: pages,
      desc: desc,
      year: year,
    );
  }
}
