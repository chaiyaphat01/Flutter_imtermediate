import 'package:flutter/material.dart';
import 'package:flutter_api/services/rest_api.dart';
import 'package:flutter_api/models/product.dart';

class StockScreen extends StatefulWidget {
  StockScreen({Key key}) : super(key: key);

  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  //cal api services
  CallAPI callAPI; // สร้าง object

  //สร้าง context
  BuildContext context;

  @override
  void initState() {
    super.initState();
    callAPI = CallAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Product List"),
          actions: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Icon(Icons.add),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,"/addproduct"
                );
              },
            )
          ],
        ),
        body: Center(
          // builder นั้นคือ view
          //future มาจาก api  และยัง update UI ให้ทันที่ถ้าเปลี่ยน
          child: FutureBuilder(
            future: callAPI.getProduct(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                      "Some thing wrong with ${snapshot.error.toString()}"),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                //เริ่มผูกค่าตรงนี้
                List<Product> product = snapshot.data;
                return _buildListView(product);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}

//List view buildder
//รับ list แบบ Product ใช้ตัวแปร products คือ object
Widget _buildListView(List<Product> products) {
  return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        //load model
        Product product = products[index];
        return Card(
          child: InkWell(
            onTap: () {
              print("View");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Image.network(product.productImage),
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.productName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 21.0),
                          ),
                          Text(
                            product.productCategory,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            "THB " + product.productPrice,
                            style: TextStyle(fontSize: 21.0),
                          )
                        ],
                      ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              print("Edit");
                            },
                            child: Text("Edit")),
                        TextButton(
                            onPressed: () {
                              print("Delete");
                            },
                            child: Text("Delete")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
