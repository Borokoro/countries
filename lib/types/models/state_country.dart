import 'package:equatable/equatable.dart';

class StateCountry extends Equatable {
  final String name;

  const StateCountry({required this.name});

  factory StateCountry.fromJson(Map<String, dynamic> json) {
    return StateCountry(name: json["name"]);
  }

  @override
  List<Object?> get props => [name];
}
