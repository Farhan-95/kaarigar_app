import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaarigar/views/widgets/custom_appbar_widget/purple_app_bar.dart';
import '../../../../core/utils/text_style.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  bool address = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PurpleAppBar(title: 'Payment Methods'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.wallet_outlined),
              title: Text(
                'Add New card',
                style: myTextStyle(Colors.black, 15, true),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.forward),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Text('Credit Cards', style: myTextStyle(Colors.black, 18, true)),
            ],
          ),
          SizedBox(height: 10),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/visa_card.png'),
                  title: Text(
                    '58305***********977',
                    style: myTextStyle(Colors.black, 15, true),
                  ),
                  subtitle: Text(
                    'Visa Card',
                    style: myTextStyle(Colors.grey, 15, false),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
