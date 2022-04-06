import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> ProductNameList1 = [
    "Sweet cheese",
    "Sweet popcorn",
    "Sweet cheese",
    "Burger cheese",
  ];

  List<String> ProductPriceList1 = [
    "\$11",
    "\$6",
    "\$11",
    "\$6",
  ];
  List<String> ProductphotoList1 = [
    "https://i.pinimg.com/564x/62/e5/78/62e578fb13488ef21e259ed949d8bc97.jpg",
    "https://i.pinimg.com/564x/4e/59/1c/4e591c663a4c872fff1eb5bb449f7227.jpg",
    "https://i.pinimg.com/564x/15/32/3e/15323e69c77f843e5835f8406fb11c0c.jpg",
    "https://i.pinimg.com/564x/62/e5/78/62e578fb13488ef21e259ed949d8bc97.jpg",
  ];

  List<String> ProductphotoList2 = [
    "https://i.pinimg.com/564x/b3/b5/11/b3b511ae5895b7aad2fa282eeb88cdbc.jpg",
    "https://i.pinimg.com/236x/bf/3e/b2/bf3eb25013ea1eea0d67089a1b5fa972.jpg",
    "https://i.pinimg.com/564x/3b/e5/c4/3be5c43a0d04414cfe2127f6610abaa7.jpg",
    "https://i.pinimg.com/564x/7e/29/92/7e2992291bdf41e521f1375d646f4e27.jpg",
  ];
  List<String> ProductNameList2 = [
    "Big__ Burger ",
    "Cupe_ Cake",
    "Chocolate covered",
    "Sweet Cake",
  ];

  List<String> ProductPriceList2 = [
    "\$30",
    "\$60",
    "\$90",
    "\$120",
  ];

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.segment),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Color.fromARGB(255, 248, 125, 10),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: Row(
                children: [
                  const Text(
                    "SUPER\nBEEF BURGER",
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 90),
                        child: Image.network(
                            "https://i.pinimg.com/564x/54/0f/5e/540f5ef53dd2cf601d29dddd3b92026a.jpg"),
                      ),
                      Positioned(
                        right: 25,
                        top: 80,
                        child: IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                          color: Colors.red,
                          iconSize: 35,
                        ),
                      ),
                      Positioned(
                        right: 25,
                        top: 140,
                        child: IconButton(
                          icon: Icon(Icons.history),
                          onPressed: () {},
                          color: Colors.red,
                          iconSize: 35,
                        ),
                        // child:Text("ffffff"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                    flex: 1,
                    child: Text(
                      "\$ 42",
                      style: TextStyle(fontSize: 35, color: Colors.grey),
                    )),
                Expanded(
                  flex: 2,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 248, 125, 10),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5))),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        margin: const EdgeInsets.only(left: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text("-",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 248, 125, 10),
                                      ))),
                              width: 40,
                            ),
                            const Text("2",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 248, 125, 10),
                                )),
                            SizedBox(
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 248, 125, 10),
                                  ),
                                ),
                              ),
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  const Text(
                    "FEATURED",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: ProductNameList1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                            ProductphotoList1[index],
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ProductNameList1[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ProductPriceList1[index],
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 248, 125, 10)),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Image.network(
                            ProductphotoList2[index],
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ProductNameList2[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ProductPriceList2[index],
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 248, 125, 10)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
