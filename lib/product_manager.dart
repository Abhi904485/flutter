import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProject ;
  ProductManager(this.startingProject);
  @override
  State<StatefulWidget> createState() {
    return new _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {
      _products.add(widget.startingProject);
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add("My family 1");
              });
            },
            child: Text("Add Family Members"),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
