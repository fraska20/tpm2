import 'package:flutter/material.dart';
import 'data_food.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: Text("Rekomendasi Makanan Indonesia"),
      ),
      body: ListView.builder(
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            final DataBuku data = listBuku[index];
            final Uri _url = Uri.parse(data.link);

            void _launchUrl() async {
              if (!await launchUrl(_url)) throw 'Could not launch $_url';
            }

            return Center(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.0, right: 10.0),
                      width: MediaQuery.of(context).size.width / 3,
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
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (listBuku[index].isFavorite == false) {
                                      listBuku[index].isFavorite = true;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("Add Success"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    } else {
                                      listBuku[index].isFavorite = false;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("Delete Success"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  });
                                },
                                child: Text(data.isFavorite
                                    ? 'Delete From Favorite'
                                    : 'Add To Favorite'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
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
