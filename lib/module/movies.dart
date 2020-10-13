class Movies {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final String description;
  final String runTime;

  Movies(this.id, this.title, this.subTitle, this.imageUrl, this.description,
      this.runTime);
}

class Movie {
  List<Movies> _items = [
    Movies(
        'p1',
        'Joker',
        'Crime, Drama, Thriller',
        'https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg',
        'The Joker, initially portrayed as a small-time crook, was disfigured and driven insane by an accident with toxic chemicals. He was depicted with chalk-white skin, ruby-red lips permanently fixed in a demonic grin, and bright green hair.',
        '122 minutes'),
    Movies(
        'p2',
        'John Wick 2',
        'Action, Adventure',
        'https://lwlies.com/wp-content/uploads/2017/11/John-Wick-2-900x0-c-default.jpg',
        'John Wick (Keanu Reeves) drives to a warehouse owned by Abram Tarasov (Peter Stormare) to get his car back. Abram wants payback against John for killing his brother Viggo and nephew Iosef. John is killing all of Abram\'s guards before he finally gets to his car. As he drives away, a number of Abram\'s men attack John.',
        '180 minutes'),
    Movies(
        'p3',
        'Thor',
        'Action, fantasy',
        'https://lh3.googleusercontent.com/_0TuFUqAQNgw/TY2oYTHMngI/AAAAAAAAIdk/vdqUM2I3Dv0/s800/Thor%20Poster_2.jpg',
        'Thor (Old Norse: por) is the god of thunder and lightning in Norse mythology, associated with strength, storms, hallowing and fertility. He is the son of Odin and Jörð, the personification of the Earth, and is physically the strongest of the Æsir.',
        '130 minutes'),
    Movies(
        'p4',
        'Dunkirk',
        'ambiguity, Adventure',
        'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/4c177c2b7f7bb9a679f089bcb50f844e_3e89eb5d-ffbd-4033-a00f-e595a3ef2e2a_240x360_crop_center.progressive.jpg?v=1573587540',
        'Dunkirk evacuation, (1940) in World War II, the evacuation of the British Expeditionary Force (BEF) and other Allied troops from the French seaport of Dunkirk (Dunkerque) to England. Naval vessels and hundreds of civilian boats were used in the evacuation, which began on May 26.',
        '129 minutes'),
    Movies(
        'p5',
        'The Artist',
        'ambiguity, Adventure',
        'https://image.tmdb.org/t/p/w500/vvdif5UMQpMCrnnsOZQWujpaBW8.jpg',
        'Hollywood, 1927: As silent movie star George Valentin wonders if the arrival of talking pictures will cause him to fade into oblivion, he sparks with Peppy Miller, a young dancer set for a big break.',
        '129 minutes'),
  ];

  List<Movies> get items {
    return [..._items];
  }

  Movies findById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }
}
// class movie {
//   String _createdBy;
//   String _description;
//   int _favoriteCount;
//   String _id;
//   List<Items> _items;
//   int _itemCount;
//   String _iso6391;
//   String _name;
//   String _posterPath;
//
//   movie(
//       {String createdBy,
//         String description,
//         int favoriteCount,
//         String id,
//         List<Items> items,
//         int itemCount,
//         String iso6391,
//         String name,
//         String posterPath}) {
//     this._createdBy = createdBy;
//     this._description = description;
//     this._favoriteCount = favoriteCount;
//     this._id = id;
//     this._items = items;
//     this._itemCount = itemCount;
//     this._iso6391 = iso6391;
//     this._name = name;
//     this._posterPath = posterPath;
//   }
//
//   String get createdBy => _createdBy;
//   set createdBy(String createdBy) => _createdBy = createdBy;
//   String get description => _description;
//   set description(String description) => _description = description;
//   int get favoriteCount => _favoriteCount;
//   set favoriteCount(int favoriteCount) => _favoriteCount = favoriteCount;
//   String get id => _id;
//   set id(String id) => _id = id;
//   List<Items> get items => _items;
//   set items(List<Items> items) => _items = items;
//   int get itemCount => _itemCount;
//   set itemCount(int itemCount) => _itemCount = itemCount;
//   String get iso6391 => _iso6391;
//   set iso6391(String iso6391) => _iso6391 = iso6391;
//   String get name => _name;
//   set name(String name) => _name = name;
//   String get posterPath => _posterPath;
//   set posterPath(String posterPath) => _posterPath = posterPath;
//
//   movie.fromJson(Map<String, dynamic> json) {
//     _createdBy = json['created_by'];
//     _description = json['description'];
//     _favoriteCount = json['favorite_count'];
//     _id = json['id'];
//     if (json['items'] != null) {
//       _items = new List<Items>();
//       json['items'].forEach((v) {
//         _items.add(new Items.fromJson(v));
//       });
//     }
//     _itemCount = json['item_count'];
//     _iso6391 = json['iso_639_1'];
//     _name = json['name'];
//     _posterPath = json['poster_path'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['created_by'] = this._createdBy;
//     data['description'] = this._description;
//     data['favorite_count'] = this._favoriteCount;
//     data['id'] = this._id;
//     if (this._items != null) {
//       data['items'] = this._items.map((v) => v.toJson()).toList();
//     }
//     data['item_count'] = this._itemCount;
//     data['iso_639_1'] = this._iso6391;
//     data['name'] = this._name;
//     data['poster_path'] = this._posterPath;
//     return data;
//   }
// }
//
// class Items {
//   int _voteCount;
//   double _popularity;
//   int _id;
//   bool _video;
//   String _mediaType;
//   double _voteAverage;
//   String _title;
//   String _releaseDate;
//   String _originalLanguage;
//   String _originalTitle;
//   List<int> _genreIds;
//   String _backdropPath;
//   bool _adult;
//   String _overview;
//   String _posterPath;
//
//   Items(
//       {int voteCount,
//         double popularity,
//         int id,
//         bool video,
//         String mediaType,
//         double voteAverage,
//         String title,
//         String releaseDate,
//         String originalLanguage,
//         String originalTitle,
//         List<int> genreIds,
//         String backdropPath,
//         bool adult,
//         String overview,
//         String posterPath}) {
//     this._voteCount = voteCount;
//     this._popularity = popularity;
//     this._id = id;
//     this._video = video;
//     this._mediaType = mediaType;
//     this._voteAverage = voteAverage;
//     this._title = title;
//     this._releaseDate = releaseDate;
//     this._originalLanguage = originalLanguage;
//     this._originalTitle = originalTitle;
//     this._genreIds = genreIds;
//     this._backdropPath = backdropPath;
//     this._adult = adult;
//     this._overview = overview;
//     this._posterPath = posterPath;
//   }
//
//   int get voteCount => _voteCount;
//   set voteCount(int voteCount) => _voteCount = voteCount;
//   double get popularity => _popularity;
//   set popularity(double popularity) => _popularity = popularity;
//   int get id => _id;
//   set id(int id) => _id = id;
//   bool get video => _video;
//   set video(bool video) => _video = video;
//   String get mediaType => _mediaType;
//   set mediaType(String mediaType) => _mediaType = mediaType;
//   double get voteAverage => _voteAverage;
//   set voteAverage(double voteAverage) => _voteAverage = voteAverage;
//   String get title => _title;
//   set title(String title) => _title = title;
//   String get releaseDate => _releaseDate;
//   set releaseDate(String releaseDate) => _releaseDate = releaseDate;
//   String get originalLanguage => _originalLanguage;
//   set originalLanguage(String originalLanguage) =>
//       _originalLanguage = originalLanguage;
//   String get originalTitle => _originalTitle;
//   set originalTitle(String originalTitle) => _originalTitle = originalTitle;
//   List<int> get genreIds => _genreIds;
//   set genreIds(List<int> genreIds) => _genreIds = genreIds;
//   String get backdropPath => _backdropPath;
//   set backdropPath(String backdropPath) => _backdropPath = backdropPath;
//   bool get adult => _adult;
//   set adult(bool adult) => _adult = adult;
//   String get overview => _overview;
//   set overview(String overview) => _overview = overview;
//   String get posterPath => _posterPath;
//   set posterPath(String posterPath) => _posterPath = posterPath;
//
//   Items.fromJson(Map<String, dynamic> json) {
//     _voteCount = json['vote_count'];
//     _popularity = json['popularity'];
//     _id = json['id'];
//     _video = json['video'];
//     _mediaType = json['media_type'];
//     _voteAverage = json['vote_average'];
//     _title = json['title'];
//     _releaseDate = json['release_date'];
//     _originalLanguage = json['original_language'];
//     _originalTitle = json['original_title'];
//     _genreIds = json['genre_ids'].cast<int>();
//     _backdropPath = json['backdrop_path'];
//     _adult = json['adult'];
//     _overview = json['overview'];
//     _posterPath = json['poster_path'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['vote_count'] = this._voteCount;
//     data['popularity'] = this._popularity;
//     data['id'] = this._id;
//     data['video'] = this._video;
//     data['media_type'] = this._mediaType;
//     data['vote_average'] = this._voteAverage;
//     data['title'] = this._title;
//     data['release_date'] = this._releaseDate;
//     data['original_language'] = this._originalLanguage;
//     data['original_title'] = this._originalTitle;
//     data['genre_ids'] = this._genreIds;
//     data['backdrop_path'] = this._backdropPath;
//     data['adult'] = this._adult;
//     data['overview'] = this._overview;
//     data['poster_path'] = this._posterPath;
//     return data;
//   }
// }
