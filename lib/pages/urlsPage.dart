import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_android/url_launcher_android.dart';
import '../themes/colors.dart';
import '../models/liens.dart';

class UrlsPage extends StatefulWidget {
  const UrlsPage({super.key});

  @override
  State<UrlsPage> createState() => _UrlsPageState();
}

class _UrlsPageState extends State<UrlsPage> {
  void _launchURL(String _url) async {
    if(!await launch(_url)) throw 'Désolé nous ne pas accéder à "$_url". Veuillez vérifier votre connexion internet ou wifi et réssayer.';
    }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5),
      children: [
        ...liens.map((item) => Card(
          child: ListTile(
            onTap: ()=>_launchURL(item.url.toString()),
            leading: CircleAvatar(child: Icon(item.icon, color: couleur,),),
            title: Text(item.name.toString()),
            subtitle: Text(item.url.toString()),
            trailing: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.favorite_outline),
              color: couleur,
            ),
          ),
        )),
      ],
    );
  }
}
