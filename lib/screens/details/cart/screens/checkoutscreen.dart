import 'package:app1/constants.dart';
import 'package:app1/screens/details/cart/product_model.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;
  final ValueSetter<ProductModel> _valueDeleter;
  const CheckoutScreen(this.cart, this.sum, this._valueDeleter, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(cart[index].image),
                  title: Text(cart[index].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${cart[index].price}TL",
                        style: TextStyle(
                            color: qTextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 35,
                        color: Colors.red,
                        onPressed: () => _valueDeleter(cart[index]),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: cart.length,
              shrinkWrap: true,
            ),
          ),
          Divider(
            height: 15,
          ),
          Text(
            "Toplam : $sum TL",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: qPrimaryColor),
          ),
        ],
      ),
    );
  }
}
