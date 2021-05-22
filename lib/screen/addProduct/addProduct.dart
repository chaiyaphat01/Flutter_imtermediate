import 'package:flutter/material.dart';

class AddproductScreen extends StatefulWidget {
  AddproductScreen({Key key}) : super(key: key);

  @override
  _AddproductScreenState createState() => _AddproductScreenState();
}

class _AddproductScreenState extends State<AddproductScreen> {
  final formKey = GlobalKey<FormState>();
  String productName,
      productDetail,
      productBarcode,
      productQTY,
      productPrice,
      productImage,
      productCategory,
      productStatus;

  Widget productNameText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
          // icon: Icon(Icons.email)
          prefixIcon: Icon(
            Icons.email,
            color: Colors.teal,
            size: 20,
          ),
          hintText: "product name",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          labelText: "Product Name",
          labelStyle: TextStyle(fontSize: 20, color: Colors.green),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (value) {
        if (value.isEmpty) {
          return "product name cannot empty";
        } else {
          return null;
        }
      },
      onSaved: (value) => productName = value,
    );
  }

  Widget productDetailText() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.details_outlined,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "product Deatial",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "product Deatial",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "productDetailText cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productDetail = value);
  }

  Widget producBarcodeText() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.ac_unit_rounded,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "Barcode",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "Barcode",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producBarcodeText cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productBarcode = value);
  }

  Widget producQtyText() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.ad_units,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "Qty",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "Qty",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producQtyText cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productQTY = value);
  }

  Widget producPriceText() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.privacy_tip_rounded,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "Price",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "Price",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producPriceText cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productPrice = value);
  }

  Widget producImage() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.image,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "image",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "Image",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producImage cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productImage = value);
  }

  Widget producCatalog() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.adb,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "producCatalog",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "producCatalog",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producCatalogcannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productCategory = value);
  }

  Widget producStatus() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 20, color: Colors.teal),
        decoration: InputDecoration(
            // icon: Icon(Icons.email)
            prefixIcon: Icon(
              Icons.stairs,
              color: Colors.teal,
              size: 20,
            ),
            hintText: "producStatus",
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            labelText: "producStatus",
            labelStyle: TextStyle(fontSize: 20, color: Colors.green),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        validator: (value) {
          if (value.isEmpty) {
            return "producStatus cannot empty";
          } else {
            return null;
          }
        },
        onSaved: (value) => productStatus = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New product")),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); //เปิด key-borad บอร์ดเมื่อกดที่ว่าง
        },
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productNameText(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productDetailText(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producBarcodeText(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producQtyText(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producPriceText(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producImage(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producCatalog(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: producStatus(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        print("validation success");
                        print("Product name = $productName , Product Bacode = $productBarcode");
                      }
                    },
                    icon: Icon(Icons.confirmation_num),
                    label: Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
