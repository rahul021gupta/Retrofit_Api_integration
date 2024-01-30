import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit_api/model/model.dart';
import 'package:retrofit_api/service/api_service.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Retrofit")),
        //body: Text("Hiii"),
        body: _buildBody(context));
  }

  FutureBuilder<dynamic> _buildBody(BuildContext context) {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
      future: apiService.getPosts(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          print('data is here: ${snapshot.data}');

          return ListView.builder(
            itemCount: snapshot.data?.products?.allproducts!.product?.length,
            itemBuilder: (context, index) {
              print(
                  "Hiiiiiiiiiii $snapshot.data?.products?.allproducts!.product?.length");
              print(
                  'data is here: ${snapshot.data?.products?.allproducts?.product![index].imageLink ?? ""}');
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: Image.network(
                                snapshot.data?.products?.allproducts
                                        ?.product![index].imageLink ??
                                    "",
                                fit: BoxFit.cover,
                                width: 140,
                                height: 100,
                              )),
                          SizedBox(
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      snapshot.data?.products!.allproducts
                                          ?.product![index].name,
                                      overflow: TextOverflow.ellipsis),
                                  Row(
                                    children: [
                                      Text(
                                        snapshot.data?.products!.allproducts
                                                ?.product![index].oldPrice ??
                                            "",
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        snapshot.data?.products!.allproducts
                                            ?.product![index].price,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
