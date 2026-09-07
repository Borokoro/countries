import 'package:equatable/equatable.dart';

class Continent extends Equatable {
  final String name;

  const Continent({required this.name});

  factory Continent.fromJson(Map<String, dynamic> json) {
    return Continent(name: json["name"]);
  }

  @override
  List<Object?> get props => [name];
}
