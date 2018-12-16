import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String StartingProduct;
  ProductManager(this.StartingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.StartingProduct);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
                print(_products);
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
