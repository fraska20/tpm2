import 'package:flutter/material.dart';
import 'data_food.dart';
import 'package:url_launcher/url_launcher.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Favorites")),
      body: ListView.builder(
          itemCount: listBuku
              .where((element) => element.isFavorite == true)
              .toList()
              .length,
          itemBuilder: (context, index) {
            List buku = listBuku
                .where((element) => element.isFavorite == true)
                .toList();
            DataBuku data = buku[index];

            final Uri _url = Uri.parse(data.link);

            void _launchUrl() async {
              if (!await launchUrl(_url)) throw 'Could not launch $_url';
            }

            return Center(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.network(
                        data.imageLink,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.foodName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            data.region,
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.italic),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RaisedButton(
                                onPressed: _launchUrl,
                                child: Text('Link Detail'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
