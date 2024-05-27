import 'package:ecommerce_app/Custom/list.dart';
import 'package:ecommerce_app/View/ListPage.dart';
import 'package:flutter/material.dart';


class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _appState();
}

class _appState extends State<product> {
  @override
  Widget build(BuildContext context) {
    var list = ModalRoute.of(context)!.settings.arguments as Map;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(centerTitle: true,title: Text("SUPER SALE",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
            fontStyle: FontStyle.italic,fontSize: 25,),),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop(context);
              },
              child: Icon(
                Icons.arrow_back_sharp,
                size: 25,
              ),
            ),
            actions: [
              InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {
                  count = 0;
                  for (int i = 0; i < cartlist.length; i++) {
                    count += (cartlist[i]['prize'] * cartlist[i]['qty']);
                  }
                  if (cartlist.length == 0) {
                    num = 0;
                  } else {
                    num = 1;
                  }
                  Navigator.of(context).pushNamed('/last');
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 35,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 310,
                  width: double.infinity,
                  child: Image.asset(
                    list['Image'],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 170),
                      height: 8,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11,
                        ),
                        Center(
                            child: Text(
                              list['name'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  wordSpacing: 2,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  size: 32,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 2),
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    '${list['rating']}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    '(${list['public']})',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(width: 146),
                                Text('\$ ${list['prize']}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 0.5,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0),
                          child: Text(
                            'Available size',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 300.0,
                          ),
                          child: Text(
                            'Color',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              cartlist.add(list);
                              num = 1;
                            },
                            style: ButtonStyle(
                              shape: const MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff2f3336)),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.grey.shade700),
                            ),
                            child: const Center(
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}