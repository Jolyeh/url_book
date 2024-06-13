import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/liens.dart';
import '../themes/colors.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({super.key});

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  void _launchURL(String _url) async {
    if(!await launch(_url)) throw 'Désolé nous ne pas accéder à "$_url". Veuillez vérifier votre connexion internet ou wifi et réssayer.';
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...favoris.reversed.map((item) => Card(
          child: ListTile(
            onTap: ()=>_launchURL(item.url.toString()),
            leading: CircleAvatar(child: Icon(item.icon, color: couleur,),),
            title: Text(item.name.toString()),
            subtitle: Text(item.url.toString()),
            trailing: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.favorite),
              color: couleur,
            ),
          ),
        )),
      ],
    );
  }
}
