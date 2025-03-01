class NewAndHotModel{
  String title;
  String description;
  String? posterPath;
  String? releaseDate;

  NewAndHotModel({
    required this.title,
    required this.description,
    required this.posterPath,this.releaseDate
  });

  factory NewAndHotModel.fromJson(Map<String,dynamic> json){
    return NewAndHotModel(
      title: json['title'], 
      description: json['overview'], 
      releaseDate: json['release_date'],
      posterPath: json['poster_path'] ?? 'https://media.themoviedb.org/t/p/w188_and_h282_bestv2/iUgeT99RHVdqkExrW7X0poE0BIB.jpg'
    );
  }
}