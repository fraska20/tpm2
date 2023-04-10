import 'package:flutter/material.dart';
import 'data_buku.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Favorites")
      ),
      body: ListView.builder(
          itemCount: listBuku.where((element) => element.isFavorite == true).toList().length,
          itemBuilder: (context, index) {
            List buku = listBuku.where((element) => element.isFavorite == true).toList();
            DataBuku data = buku[index];
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
                            data.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}