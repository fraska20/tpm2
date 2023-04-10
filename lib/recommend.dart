import 'package:flutter/material.dart';
import 'data_buku.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({Key? key}) : super(key: key);

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Rekomendasi"),
        ),
      ),
      body: ListView.builder(
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            final DataBuku data = listBuku[index];
            return Center(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.0, right: 10.0),
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
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if(listBuku[index].isFavorite == false){
                                      listBuku[index].isFavorite = true;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content:  Text("Tambah Ke Favorit"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                    else {
                                      listBuku[index].isFavorite = false;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content:  Text("Hapus dari Favorit"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  }
                                  );
                                },
                                child: Text(data.isFavorite ? 'Hapus dari Favorite' : 'Tambahkan ke Favorite'),
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
          }
      ),
    );
  }
}