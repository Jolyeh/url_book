import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SiteUrl{
  String? name, url;
  IconData? icon;

  SiteUrl({
    required this.name,
    required this.url,
    required this.icon,
  });
}

List<SiteUrl> liens = [
  SiteUrl(name: 'Google', url: 'https://www.google.com', icon: FontAwesomeIcons.google),
  SiteUrl(name: 'GitHub', url: 'https://GitHub.com', icon: FontAwesomeIcons.github),
  SiteUrl(name: 'Facebook', url: 'https://freefacebook.com', icon: FontAwesomeIcons.facebook),
  SiteUrl(name: 'Microsoft', url: 'https://microsoft.com', icon: FontAwesomeIcons.microsoft),
  SiteUrl(name: 'Behance', url: 'http://behance.com', icon: FontAwesomeIcons.behance),
  SiteUrl(name: 'Pinterest', url: 'https://pinterest.com', icon: FontAwesomeIcons.pinterest),
  SiteUrl(name: 'Wikipedia', url: 'https://wikipedia.com', icon: FontAwesomeIcons.wikipediaW),
  SiteUrl(name: 'Pub Dev', url: 'https://pub.dev', icon: FontAwesomeIcons.deviantart),
];

List favoris = [
  SiteUrl(name: 'Pub Dev', url: 'https://pub.dev', icon: FontAwesomeIcons.f),
  SiteUrl(name: 'GitHub', url: 'https://GitHub.com', icon: FontAwesomeIcons.github),
];
