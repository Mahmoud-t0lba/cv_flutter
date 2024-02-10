import 'package:flutter/material.dart';

class Header {
  final String name;
  final String bio;
  final Location location;
  final Phone phone;
  final String email;
  final List<Links> links;
  final String jobTitle;

  Header({
    required this.jobTitle,
    required this.bio,
    required this.location,
    required this.name,
    required this.phone,
    required this.email,
    required this.links,
  });
}

class Location {
  final String address;
  final String? lat, long;

  Location({required this.address, this.lat, this.long});
}

class Phone {
  final String code, number;
  Phone({required this.code, required this.number});
}

class Links {
  final String url;
  final IconData icon;
  Links(this.url, {this.icon = Icons.language_outlined});
}
