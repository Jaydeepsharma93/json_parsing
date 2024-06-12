class Users {
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  int? id;
  Address? address;
  Company? company;

  Users(
      {this.name,
        this.email,
        this.username,
        this.id,
        this.phone,
        this.website,
        this.address,
        this.company});
  factory Users.fromJson(Map json) {
    return Users(
      name: json['name'],
      email: json['email'],
      username: json['username'],
      id: json['id'],
      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),
    );
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;
  Address({this.street, this.suite, this.city, this.zipcode, this.geo});
  factory Address.fromJson(Map json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }
}

class Geo {
  String? lat;
  String? lng;
  Geo({this.lat, this.lng});
  factory Geo.fromJson(Map json) {
    return Geo(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;
  Company({this.name, this.catchPhrase, this.bs});
  factory Company.fromJson(Map json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
